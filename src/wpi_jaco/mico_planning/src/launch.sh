#!/bin/sh
gnome-terminal -e "./mico_simulation/V-REP_PRO_EDU_V3_5_0_Linux/vrep.sh ./mico_simulation/therbligs_mico.ttt"
sleep 10
gnome-terminal -e "bash -c 'roslaunch mico_planning path_planning.launch;exec $SHELL'"
sleep 10
gnome-terminal -e "bash -c 'rosrun mico_planning mico_master.py;exec $SHELL'"
#sleep 10
#gnome-terminal -e "bash -c 'rosrun mico_planning mico_positionpublisher.py;exec $SHELL'"
sleep 10
gnome-terminal -e "bash -c 'python mico_client.py;exec $SHELL'"
