#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
# Mico_positionpublisher publishes a geometry_msg to the rostopic named "end_effector_position", so that
# the front-end could directly fetch the end_effector_position through ROS-bridge.
##################################

from mico_planner import ActionHandler
import rospy
from std_msgs.msg import String
import moveit_commander
from geometry_msgs.msg import PoseStamped

###
# Create a string of object position from the geometry_msg pose
###
def unpackPosition(pose):
    return str(pose.position.x) + " " + str(pose.position.y) + " " + str(pose.position.z) + " " + str(pose.orientation.x) + " " + str(pose.orientation.y) + " " + str(pose.orientation.z) + " " + str(pose.orientation.w)
###
# loop for puslishing end-effector position as a std_msgs to topic end_effector_position
# The end-effector position will a vector of doubles with size equal to 6 (x,y,z,r,p,y).
# Eg: 0.2 0.3 0.4 0.1 0.2 0.3
###
def pubEndEffectorPosition(acHander):
	pub = rospy.Publisher('end_effector_position', String, queue_size=10)
	rate = rospy.Rate(10)

	while not rospy.is_shutdown():
		position_Str = unpackPosition(acHander.Read_Position())
		rospy.loginfo(position_Str)
		pub.publish(position_Str)
		rate.sleep()

if __name__ == '__main__':
    # Build the action handler
    acHan = ActionHandler("arm", "position_publisher", False)
    # start publishing end_effector positions to a topic
    try:
		pubEndEffectorPosition(acHan)
    except rospy.ROSInterruptException:
        pass
