#!/bin/sh
# This srcipt start the ROS force control

echo "Starting force control on KINOVA MICO..."

gnome-terminal -e "bash -c 'cd ./src/wpi_jaco/mico_planning/src;python mico_forcecontrol.py;exec $SHELL'"
sleep 5
gnome-terminal -e "bash -c 'rosrun mico_planning mico_positionpublisher.py;exec $SHELL'"

