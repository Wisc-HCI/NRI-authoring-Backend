#!/bin/sh
gnome-terminal -e "bash -c 'roslaunch wpi_jaco_wrapper arm.launch;exec $SHELL'"
#gnome-terminal -e "bash -c 'cd ./mico_simulation/V-REP_PRO_EDU_V3_5_0_Linux;./start_vrep.sh;exec $SHELL'"
#sleep 5
gnome-terminal -e "bash -c 'roslaunch mico_planning path_planning.launch;exec $SHELL'"
sleep 10
gnome-terminal -e "bash -c 'rosrun mico_planning mico_master.py nosim;exec $SHELL'"
#sleep 5
#gnome-terminal -e "bash -c 'rosrun mico_planning mico_positionpublisher.py;exec $SHELL'"
#sleep 5
#gnome-terminal -e "bash -c 'roslaunch rosbridge_server rosbridge_websocket.launch;exec $SHELL'"
#sleep 10
#gnome-terminal -e "bash -c 'python mico_client.py;exec $SHELL'"
