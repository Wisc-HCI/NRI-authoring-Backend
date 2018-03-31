#!/bin/sh
# make sure gnome-terminal is installed
# This script is to connect to the real robot and launch the entire back-end for KINOVA MICO robot arm.

echo "Launching backend ROS with real robot..." 
# launch all ROS nodes associated with the KINOVA MICO and connect to the robot
gnome-terminal -e "bash -c 'roslaunch mico_planning mico_planning_with_robot.launch;exec $SHELL'"

# launch the ROS launch file for robotiq_85_gripper
gnome-terminal -e "bash -c 'roslaunch robotiq_85_bringup robotiq_85.launch run_test:=false;exec $SHELL'"

sleep 10
# start the backend mico_master, litern for the connection from the from end
gnome-terminal -e "bash -c 'rosrun mico_planning mico_master.py nosim;exec $SHELL'"

# uncomment the following if want to call Get Position from frontend via rosbridge
#sleep 5
# launch the rosbridge server
#gnome-terminal -e "bash -c 'roslaunch rosbridge_server rosbridge_websocket.launch;exec $SHELL'"
#sleep 5
# launch a ROS node to publish end-effector position to front-end
#gnome-terminal -e "bash -c 'rosrun mico_planning mico_positionpublisher.py;exec $SHELL'"

sleep 10
# create a python client and send some mocked therbligs in json
gnome-terminal -e "bash -c 'cd ./src/wpi_jaco/mico_planning/src;python mico_client.py;exec $SHELL'"
