#!/usr/bin/env python
import socket
import struct
from mico_planner import ActionHandler
import rospy
from moveit_commander import RobotCommander, os, PlanningSceneInterface, roscpp_initialize, roscpp_shutdown
import sys
import geometry_msgs.msg
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
import json
from mico_parser import ActionParser

def recvJson(socket,s):
    # read the length of the data, letter by letter until we reach EOL
    length_str = ''
    char = socket.recv(1)
    while char != '\n':
        length_str += char
        char = socket.recv(1)
    total = int(length_str)
    print "total",total
    # use a memoryview to receive the data chunk by chunk efficiently
    view = memoryview(bytearray(total))
    next_offset = 0
    while total - next_offset > 0:
        recv_size = socket.recv_into(view[next_offset:], total - next_offset)
        next_offset += recv_size
    try:
        print view.tobytes()
        deserialized = json.loads(view.tobytes())
    except (TypeError, ValueError), e:
        raise Exception('Data received was not in JSON format')
    return deserialized

###
# The main loop of this file
#   Creates the socket. Takes an action handler as input.
#   Should recieve therblig messages and translate them into plans to be run by the action handler.
def socket_loop(acHan):
#def socket_loop():
    #create an INET, STREAMing socket
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    #bind the socket to a public host,
    # and a well-known port
    server_addr = (socket.gethostname(), 9999)
    
    s.bind(server_addr)
    print 'listening up on %s port %s' % server_addr
    #become a server socket
    s.listen(5)
    #accept connections from outside
    (c, address) = s.accept()
    if c < 0:
        print("Connection Failed.\n"); 
        sys.exit(0)
    else:
        print("Connected to " + str(address))

        ##LISTENING LOOP
        loop = True
        while(loop):

            # receive the whole json from the client call
            jsonData = recvJson(c,s)
            print jsonData
            parser = ActionParser(jsonData)
            
            for i, task in enumerate(parser.getTasks()):
                print ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
                print "Starting to execute ", task['name'],'...'
                for j, therblig in enumerate(parser.getTherbligs(i)):
                    print "Next therblig: ", parser.getTherbligName(therblig)
                    if parser.getTherbligName(therblig) == "Transport Empty":
                        print "Object info: ", "XYZ-position", parser.getXYZPosition(therblig), "Orientation", parser.getOrientation(therblig)
                        # Call Transport Empty API from mico_planner
                        pose_target = createTarget(parser.getXYZPosition(therblig), parser.getOrientation(therblig))
                        acHan.Transport_Empty(4, pose_target)
                    elif parser.getTherbligName(therblig) == "Grasp":
                        print "Grasp effort: ", parser.getGraspEffort(therblig)
                        # Call grasp API from mico_planner
                        
                    elif parser.getTherbligName(therblig) == "Transport Loaded":
                        print "Object info: ", "XYZ-position", parser.getXYZPosition(therblig), "Orientation", parser.getOrientation(therblig)
                        # Call Transport Loaded API from mico_planner
            '''
            mess_len = len(message)
        
            print(message)

            if mess_len !=0:
                cmd = message.split()[0]
                print cmd
                if(cmd == "move"):
            	    pose_target = extract_nums(message)
            	    data = "received"
                    c.sendall(data)
                    #acHan.Transport_Empty(4, pose_target)
                elif(cmd == "position"):
                    #pos = acHan.Read_Position(4)
                    l = [pos.orientation.w, pos.orientation.x, pos.orientation.y, pos.orientation.z, pos.position.x, pos.position.y, pos.position.z]
                    c.sendall(''.join(str(x) for x in l))
                else:
                    break
                    '''
            break
    s.close()


def replyPosition(acHan):
    curr_Pose = acHan.Read_Position(4)
    XYZPos = (curr_Pose.position.x + "," + curr_Pose.position.y + "," + curr_Pose.position.z)
    orientaionPos = (curr_Pose.orientaion.x + "," + curr_Pose.orientaion.y + "," + curr_Pose.orientaion.z + "," + curr_Pose.orientaion.w)
    posData = {"XYZPosition": XYZPos, "Orientation": orientaionPos}
    replyJson = json.dumps(posData)
    return replyJson

def createTarget(XYZPosition, orientation):
    xyzPos = list(map(float, [pos.strip() for pos in XYZPosition.split(',')]))
    orientaionPos = list(map(float, [pos.strip() for pos in orientation.split(',')]))
    pose_target = geometry_msgs.msg.Pose()
    pose_target.position.x = xyzPos[0]
    pose_target.position.y = xyzPos[1]
    pose_target.position.z = xyzPos[2]
    pose_target.orientation.x = orientaionPos[0] 			     
    pose_target.orientation.y = orientaionPos[1]
    pose_target.orientation.z = orientaionPos[2]
    pose_target.orientation.w = orientaionPos[3]
    #print "target: ",pose_target
    
    return pose_target

###
# The standard script end calls used in all of our scripts.
# This should be called last.
def end():
    rospy.signal_shutdown("Done")
    os._exit(0)
    roscpp_shutdown()

if __name__ == '__main__':
  
    # Build the action handler
    acHan = ActionHandler("mico_arm")

    # Start the socket
    socket_loop(acHan)
    #socket_loop()

    # End this script
    end()
