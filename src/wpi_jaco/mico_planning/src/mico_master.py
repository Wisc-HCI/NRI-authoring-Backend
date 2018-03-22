#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# Mico master is the main thread running as the backend part. The master initializes the mico_planner, listens for the connection from the front-end.
# Once it receives a json query from the client, mico_master use mico_parser to parse the infomation from the json,
# executes the corresponding instruction, and construct a reply json back to the front-end port.
##################################
import socket
import sys
from mico_planner import ActionHandler
import rospy
from moveit_commander import RobotCommander, os, PlanningSceneInterface, roscpp_initialize, roscpp_shutdown
import sys
import geometry_msgs.msg
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
import json
from mico_parser import ActionParser
import log as LOG

###
# A method for serializing and sending json over the socket
###
def sendJson(socket, data):
    try:
        serialized = json.dumps(data)
    except (TypeError, ValueError), e:
        raise Exception('You can only send JSON-serializable data')
    # send the length of the serialized data first
    socket.send('%d\n' % len(serialized))
    # send the serialized data
    socket.sendall(serialized)

###
# Contruct and send a Json reply for checkROSLive Request
###
def checkROSLiveReply(connect):
    replyData = {"status" : "live", "robotName" : "mico"}
    sendJson(connect, replyData)

###
# Contruct and send a Json reply for executePlan Request
###
def executePlanReply(connect, success):
    replyData = {'ActionReply': 'ExecutePlan', 'Status' : None}
    if success:
        replyData['Status'] = 'success'
    else:
        replyData['Status'] = 'failure'
    sendJson(connect, replyData)

###
# Contruct and send a Json reply for getPosition Request
###
def getPositionReply(connect, objectPosition):
    replyData = {"ActionReply":"GetPosition", "End-effector Position":objectPosition}
    sendJson(connect, replyData)

###
# Contruct and send a Json reply for exit Request
###
def exitReply(connect):
    replyData = {"ActionReply" : "Exit", "ExitStatus" : "Success"}
    sendJson(connect, replyData)

###
# Receive data from a socket, and returns a deserilized json object. 
# The function is tested with receiving very huge data over the socket.
###
def recvJson(socket):
    # read the length of the data, letter by letter until we reach EOL
    length_str = ''
    char = socket.recv(1)
    while char != '\n':
        length_str += char
        char = socket.recv(1)
    total = int(length_str)

    # use a memoryview to receive the data chunk by chunk efficiently
    view = memoryview(bytearray(total))
    next_offset = 0
    while total - next_offset > 0:
        recv_size = socket.recv_into(view[next_offset:], total - next_offset)
        next_offset += recv_size
    try:
        LOG.INFO(view.tobytes())
        deserialized = json.loads(view.tobytes())
    except (TypeError, ValueError), e:
        raise Exception('Data received was not in JSON format')
    return deserialized


###
# Create a target pose for contains the XYZPosition and orientation of the object
###
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
    
    return pose_target

###
# Create a string of object position from the geometry_msg pose
###
def unpackPosition(pose):
    return str(pose.position.x) + " " + str(pose.position.y) + " " + str(pose.position.z) + " " + str(pose.orientation.x) + " " + str(pose.orientation.y) + " " + str(pose.orientation.z) + " " + str(pose.orientation.w)

###
# The standard script end calls used in all of our scripts.
# This should be called last.
###
def end():
    rospy.signal_shutdown("Done")
    os._exit(0)
    roscpp_shutdown()

###
# The main loop of this file reads JSON from a socket. It takes an action handler as an input parameter. 
# After parsing the JSON object, the main loop interprets the therblig messages and 
# translates them into plans to be run by the action handler.
###
def socket_loop(acHan):
#def socket_loop():
    #create an INET, STREAMing socket
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    #bind the socket to a public host and a well-known port
    server_addr = (socket.gethostname(), 9999)

    s.bind(server_addr)
    LOG.INFO('Server listening up on %s port %s' % server_addr)
    #become a server socket
    s.listen(5)
    #accept connections from outside
    (c, address) = s.accept()
    if c < 0:
        LOG.INFO("Connection Failed.\n"); 
        sys.exit(0)
    else:
        LOG.INFO("Connected to " + str(address))

        ##LISTENING LOOP
        loop = True
        while(loop):

            # receive the entire json from the client call
            jsonData = recvJson(c)
            #print jsonData
            # initialize the parser with the json Data received from the socket
            parser = ActionParser(jsonData)

            actionType = parser.getType()

            if actionType == 'CheckROSLive':
                LOG.INFO("Checking ROS alive...\n")
                checkROSLiveReply(c)
                pose_target = createTarget("-0.13944,-0.25935,0.69044", "0.33707,-0.93151,-0.11101,0.07957")
                acHan.Transport_Empty(4, pose_target)
            elif actionType == 'ExecutePlan':
                LOG.INFO("Executing the therbligs plan...\n")

                # start VREP simulation
                if acHan.simulator != None:
                    acHan.simulator.start_simulation()
                # iterate through different tasks
                for i, task in enumerate(parser.getTasks()):
                    LOG.INFO("Starting to execute ", task['name'],'...')
                    # iterate list of therbligs in the current task
                    for j, therblig in enumerate(parser.getTherbligs(i)):
                        LOG.INFO("Next therblig: ", parser.getTherbligName(therblig))

                        if parser.getTherbligName(therblig) == "Transport Empty":
                            LOG.INFO("Object info: ", "XYZ-position:", parser.getXYZPosition(therblig), "Orientation:", parser.getOrientation(therblig))
                            # Call Transport Empty API from mico_planner
                            pose_target = createTarget(parser.getXYZPosition(therblig), parser.getOrientation(therblig))
                            ret = acHan.Transport_Empty(4, pose_target)
                            if not ret:
                                LOG.ERROR("Transport Empty failed")
                        elif parser.getTherbligName(therblig) == "Grasp":
                            LOG.INFO("Grasping object: ", parser.getObjectName(therblig))
                            LOG.INFO("Grasp effort: ", parser.getGraspEffort(therblig))
                            # Call grasp API from mico_planner
                            ret = acHan.Set_Hand_Openness(1)
                            if not ret:
                                LOG.ERROR("Grasp object failed")
                        elif parser.getTherbligName(therblig) == "Transport Loaded":
                            LOG.INFO("Object info: ", "XYZ-position:", parser.getXYZPosition(therblig), "Orientation:", parser.getOrientation(therblig))
                            # Call Transport Loaded API from mico_planner
                            pose_target = createTarget(parser.getXYZPosition(therblig), parser.getOrientation(therblig))
                            ret = acHan.Transport_Loaded(4, pose_target)
                            if not ret:
                                LOG.ERROR("Transport Loaded failed")
                        elif parser.getTherbligName(therblig) == "Release Load":
                            LOG.INFO("Releasing object: ", parser.getObjectName(therblig))
                            ret = acHan.Set_Hand_Openness(0)
                            if not ret:
                                LOG.ERROR("Release object failed")
                        else:
                            LOG.INFO("Unknown therblig")

                # end VREP simulation
                if acHan.simulator != None:
                    acHan.simulator.end_simulation()

                # send the reply json
                executePlanReply(c, True)

            elif actionType == 'GetPosition':
                LOG.INFO("Getting the position...\n")
                currPose = acHan.Read_Position()
                getPositionReply(c, "1 2 3")
                getPositionReply(c, unpackPosition(currPose))

            elif actionType == 'Exit':
                LOG.INFO("Exiting...\n")
                exitReply(c)
                loop = False
                end()
            elif actionType == None:
                LOG.INFO('USAGE ERROR: Invalid Action Type\n')


    s.close()

###
# Main method
###
if __name__ == '__main__':
  
    # check if simulation is enabled
    if len(sys.argv) < 2:
        print ("Usage: rosrun mico_planning mico_master -sim")
    sim_flag = True if sys.argv[1] == "sim" else False
    # Build the action handler
    acHan = ActionHandler("mico_arm", "mico_master", 'RRTstarkConfigDefault', sim_flag)

    # Start the socket
    socket_loop(acHan)
    #socket_loop()
    
    end()
