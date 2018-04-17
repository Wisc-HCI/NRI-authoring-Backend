#!/bin/sh
# make sure gnome-terminal is installed
# This script launches the backend for therbligs and VREP simulation for the KINOVA MICO arm movement.

echo "Launching backend ROS with no robot connection..." 

# launch the backend, moveit,rviz, fake joint publisher, etc
#gnome-terminal -e "bash -c 'roslaunch mico_planning mico_planning_no_robot.launch;exec $SHELL'"
gnome-terminal -e "bash -c 'roslaunch m1n6s300_moveit_config m1n6s300_virtual_robot_demo.launch;exec $SHELL'"
sleep 10


# start the backend mico_master, litern for the connection from the from end
gnome-terminal -e "bash -c 'cd ./src/wpi_jaco/mico_planning/src;python mico_server.py 9999;exec $SHELL'"
sleep 10

# launch the VREP with a preset scene
#gnome-terminal -e "bash -c 'cd ./mico_simulation/V-REP_PRO_EDU_V3_5_0_Linux;./start_vrep.sh;exec $SHELL'"
#sleep 10

# start the back-end with remote API connected to VREP
#gnome-terminal -e "bash -c 'roslaunch mico_planning path_planning.launch sim;exec $SHELL'"

# uncomment the following if want to call Get Position from frontend via rosbridge
#sleep 5
# launch the rosbridge server
#gnome-terminal -e "bash -c 'roslaunch rosbridge_server rosbridge_websocket.launch;exec $SHELL'"
#sleep 5
# launch a ROS node to publish end-effector position to front-end
#gnome-terminal -e "bash -c 'rosrun mico_planning mico_positionpublisher.py;exec $SHELL'"

# create a python client and send some mocked therbligs in json
#gnome-terminal -e "bash -c 'cd ./src/wpi_jaco/mico_planning/src;python mico_client.py;exec $SHELL'"
