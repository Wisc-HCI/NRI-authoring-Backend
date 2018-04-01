#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################
import rospy
from robotiq_85_msgs.msg import GripperCmd, GripperStat
import log as LOG

# object controls the movements of the robotiq_85_gripper
class mico_gripper:
    def __init__(self):
        self.num_of_grippers = rospy.get_param("~num_grippers", 1)
        # make sure 1 gripper is detected
        if self.num_of_grippers != 1:
            LOG.ERROR("Incorrect number of grippers detected: {}".format(self.num_of_grippers))
            return
        else:
            LOG.INFO("Correct number of gripper detected.")
        rospy.Subscriber("/gripper/stat", GripperStat, self.update_gripper_stat, queue_size=10)
        self.gripper_publisher = rospy.Publisher('/gripper/cmd', GripperCmd, queue_size=10)
        self.gripper_stat = GripperStat()
        self.gripper_cmd = GripperCmd()
        # set the gripper force and speed to default value
        self.set_gripper_force(100.0)
        self.set_gripper_speed(0.02)

    def update_gripper_stat(self, stat):
        self.gripper_stat = stat

    def set_gripper_force(self, force):
        if self.gripper_stat.is_ready:
            LOG.ERROR("The gripper is not ready.")
            return
        self.gripper_cmd.force = force
        self.gripper_publisher.publish(self.gripper_cmd)

    def set_gripper_speed(self, speed):
        if not self.gripper_stat.is_ready:
            LOG.ERROR("The gripper is not ready.")
            return
        self.gripper_cmd.speed = speed
        self.gripper_publisher.publish(self.gripper_cmd)

    def set_gripper_position(self, position):
        if not self.gripper_stat.is_ready:
            LOG.ERROR("The gripper is not ready.")
            return False
        self.gripper_cmd.position = position
        self.gripper_cmd.speed = 0.02
        self.gripper_cmd.force = 100.0
        self.gripper_publisher.publish(self.gripper_cmd)
        # here we wait 6 seconds to wait the part to finish grasp operation
        rospy.sleep(6)
        return True
