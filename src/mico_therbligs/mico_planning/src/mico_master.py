#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# Mico master is the main thread running as the backend part. The master initializes the mico_planner, listens for the connection from the front-end.
# Once it receives a json query from the client, mico_master use mico_parser to parse the infomation from the json,
# executes the corresponding instruction, and construct a reply json back to the front-end port.
##################################
# python specific
import socket
import sys
import os
import json
import tf
# package defined by us
import log as LOG
from mico_parser import ActionParser
from mico_planner import ActionHandler
# ROS and moveit package
import rospy
from moveit_commander import RobotCommander, os, PlanningSceneInterface, roscpp_initialize, roscpp_shutdown
import geometry_msgs.msg
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint

###
# Save the mico_server HTTP reply string to reply.txt
###
def save_reply(actionType, success):
    # send the reply string
    success_flag = "success" if success else "failed"
    reply_str = "Action: {}; Status: {}".format(actionType, success_flag)
    with open("reply.txt", "w") as reply:
        reply.write(reply_str)

###
# Create a target pose for contains the XYZPosition and orientation of the object
# If the orientation is empty, we keep the orientation of the current pose, and
# set it as the target pose.
###
def createTarget(XYZPosition, orientation):

    xyzPos = map(float, [pos.strip() for pos in XYZPosition.split(',')])
    orientationPos = map(float, [pos.strip() for pos in orientation.split(',')])
    # currently we will expect exactly three coordinates for xyz and four quaternions for orientation
    if (len(xyzPos) != 3):
        print ("The length of xyz coordinates is not equal to 3.")
    if (len(orientationPos) != 4):
        print ("The length of orientation is not equal to 4.")
    # populate values for the pose_target
    pose_target = geometry_msgs.msg.Pose()
    pose_target.position.x = xyzPos[0]
    pose_target.position.y = xyzPos[1]
    pose_target.position.z = xyzPos[2]
    pose_target.orientation.x = orientationPos[0]
    pose_target.orientation.y = orientationPos[1]
    pose_target.orientation.z = orientationPos[2]
    pose_target.orientation.w = orientationPos[3]

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
def execute_plan(acHan, json_plan_file="plan.json"):

    if os.path.exists(json_plan_file):
        with open(json_plan_file, "r") as f:
            plan_json = json.load(f)

        # initialize the parser with the json Data received from the socket
      	parser = ActionParser(plan_json)

      	actionType = parser.getType()

        # check ROS alive
        if actionType == 'CheckROSLive':
      	    LOG.INFO("Checking ROS alive...\n")
            save_reply(actionType, True)
        elif actionType == 'launchROS':
            LOG.INFO("Launch ROS scripts...\n")
            save_reply(actionType, True)

        # execute a plan
        elif actionType == 'ExecutePlan':
            LOG.INFO("Executing the therbligs plan...\n")
            # start VREP simulation
            #if acHan.simulator != None:
             #   acHan.simulator.start_simulation()
            # iterate through different tasks
            for i, task in enumerate(parser.getTasks()):
                LOG.INFO("Starting to execute ", task['name'],'...')
                # iterate list of therbligs in the current task
                print ("sizesizesize",len(parser.getTherbligs(i)))
                for j, therblig in enumerate(parser.getTherbligs(i)):
                    LOG.INFO("Next therblig: ", parser.getTherbligName(therblig))

                    if parser.getTherbligName(therblig) == "Transport Empty":
                        LOG.INFO("Object info: ", "XYZ-position:", parser.getXYZPosition(therblig), "\nOrientation:", parser.getOrientation(therblig))
                        # Call Transport Empty API from mico_planner
                        pose_target = createTarget(parser.getXYZPosition(therblig), parser.getOrientation(therblig))
                        if pose_target == None:
                            continue
                        ret = acHan.Transport_Empty(pose_target)
                        if not ret:
                            LOG.ERROR("Transport Empty failed")
                    elif parser.getTherbligName(therblig) == "Grasp":
                        LOG.INFO("Grasping object: ", parser.getObjectName(therblig))
                        # Call grasp API from mico_planner
                        # open the gripper
                        ret = acHan.Set_Hand_Openness(0.085)
                        if not ret:
                            LOG.ERROR("Grasp object failed")
                        # close the gripper
                        ret = acHan.Set_Hand_Openness(0.025)
                        if not ret:
                            LOG.ERROR("Grasp object failed")
                    elif parser.getTherbligName(therblig) == "Transport Loaded":
                        LOG.INFO("Object info: ", "XYZ-position:", parser.getXYZPosition(therblig), "\nOrientation:", parser.getOrientation(therblig))
                        # Call Transport Loaded API from mico_planner
                        pose_target = createTarget(parser.getXYZPosition(therblig), parser.getOrientation(therblig))
                        if pose_target == None:
                            continue
                        ret = acHan.Transport_Loaded(pose_target)
                        if not ret:
                            LOG.ERROR("Transport Loaded failed")
                    elif parser.getTherbligName(therblig) == "Release Load":
                        LOG.INFO("Releasing object: ", parser.getObjectName(therblig))
                        # release the object
                        ret = acHan.Set_Hand_Openness(0.085)
                        if not ret:
                            LOG.ERROR("Release object failed")
                    elif parser.getTherbligName(therblig) == "Rest":
                        LOG.INFO("Object info: ", "XYZ-position:", parser.getXYZPosition(therblig), "\nOrientation:", parser.getOrientation(therblig))
                        # Call Rest API from mico_planner
                        pose_target = createTarget(parser.getXYZPosition(therblig), parser.getOrientation(therblig))
                        if pose_target == None:
                            continue
                        ret = acHan.Rest(pose_target)
                        if not ret:
                            LOG.ERROR("Rest failed")
                    elif parser.getTherbligName(therblig) == "Hold":
                        duration = (int)(parser.getHoldDuration(therblig))
                        LOG.INFO("Hold for {} seconds".format(duration))
                        # Call Hold API from mico_planner
                        ret = acHan.Hold(pose_target)
                        if not ret:
                            LOG.ERROR("Hold failed")
            # end VREP simulation
            if acHan.simulator != None:
                acHan.simulator.end_simulation()
            save_reply(actionType, True)

        # get position
        elif actionType == 'GetPosition':
            LOG.INFO("Getting the position...\n")
            currPose = acHan.Read_Position()
            save_reply(actionType, True)

        # exit ros
        elif actionType == 'Exit':
            LOG.INFO("Exiting...\n")
            save_reply(actionType, True)
            loop = False
            end()

        elif actionType == None:
            LOG.INFO('USAGE ERROR: Invalid Action Type\n')
    else:
        LOG.ERROR("Thebligs json does not exists")

# main function of the mico master
def main():
    # check if simulation is enabled
    if len(sys.argv) < 3:
        print ("Usage: python mico_master.py plan.json sim")
        exit(1)

    sim_flag = True if sys.argv[2] == "sim" else False
    json_plan_file = sys.argv[1]
    # Build the action handler
    acHan = ActionHandler("arm", "mico_master", sim_flag)
    execute_plan(acHan, json_plan_file)

###
# Main method
###
if __name__ == '__main__':
    main()
