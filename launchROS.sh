#!/bin/sh
# make sure gnome-terminal is installed
echo "Launching backend ROS..." 
gnome-terminal -e "bash -c 'roslaunch mico_planning path_planning.launch;exec $SHELL'"
sleep 10
gnome-terminal -e "bash -c 'rosrun mico_planning mico_master.py;exec $SHELL'"
sleep 10
gnome-terminal -e "bash -c 'rosrun mico_planning mico_positionpublisher.py;exec $SHELL'"
#sleep 10
#gnome-terminal -e "bash -c 'python mico_client.py;exec $SHELL'"
