#!/usr/bin/env python
##################################
# University of Wisconsin-Madison
# Author: Jieru Hu
##################################

import sys
import rospy
import std_msgs.msg

# main method
def main():
    # start ROS node
    node_name = "mico_force_control"
    #roscpp_initialize(sys.argv)
    rospy.init_node(node_name, anonymous=True)

    rospy.sleep(3)

    force_control_publisher = rospy.Publisher('mico_arm/Forcecontrol', std_msgs.msg.Bool, queue_size=10)
    rospy.sleep(1)

    switch = True
    force_control_publisher.publish(data=switch)

    loop = True
    while loop:
        user_input = raw_input("Type q tp exit forcecontrol: ")
        if user_input == 'q':
            loop = False


if __name__ == "__main__":
  main()

