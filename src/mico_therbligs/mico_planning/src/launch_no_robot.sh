#!/bin/sh
# make sure gnome-terminal is installed
# This script launches the backend for therbligs and VREP simulation for the KINOVA MICO arm movement.
# Important: This script needs to be carefully updated before use.


echo "Launching backend ROS with no robot connection..." 

# launch the backend, moveit,rviz, vitual joint publisher, etc
#gnome-terminal -e "bash -c 'roslaunch mico_planning mico_planning_no_robot.launch;exec $SHELL'"
gnome-terminal -e "bash -c 'roslaunch m1n6s300_moveit_config m1n6s300_virtual_robot_demo.launch;exec $SHELL'"
sleep 10


# start the backend mico_master, litern for the connection from the from end
gnome-terminal -e "bash -c 'python mico_server.py 9999;exec $SHELL'"
sleep 10

# launch the VREP with a preset scene
#gnome-terminal -e "bash -c 'cd ./mico_simulation/V-REP_PRO_EDU_V3_5_0_Linux;./start_vrep.sh;exec $SHELL'"
#sleep 10

# launch the rosbridge server
gnome-terminal -e "bash -c 'roslaunch rosbridge_server rosbridge_websocket.launch;exec $SHELL'"
sleep 5
gnome-terminal -e "bash -c 'python mico_positionpublisher.py;exec $SHELL'"
