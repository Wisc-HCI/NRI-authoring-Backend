from mico_gripper import mico_gripper
import rospy

rospy.init_node("init", anonymous=True)
gripper = mico_gripper()

if (not gripper.set_gripper_position(0.085)):
  print "failed"
