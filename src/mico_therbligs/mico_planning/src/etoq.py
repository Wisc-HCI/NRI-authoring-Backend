import rospy
from tf.msg import tfMessage
from tf.transformations import quaternion_from_euler

q = quaternion_from_euler(1.52325, 0.05453, -2.54057)
print "quaternion: %s %s %s %s"%(q[0],q[1],q[2],q[3])
