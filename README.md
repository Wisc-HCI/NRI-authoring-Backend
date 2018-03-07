# ROS backend for the NSF NRI Authoring environment.

** Work in Progress **

This is the github repository of the backend part of the NRI-Authoring Environment, developed in Wisconsin HCI lab from UW-Madison. The backend part is integrated with wpi_jaco package (http://wiki.ros.org/wpi_jaco) which is used to communicate with Kinova's MICO arm and also provides config file for MICO arm to do motion planning with Moveit Framework in ROS. Our team also created a front-end Web UI to interact with this backend code. The related frontend UI could be found at following link: https://github.com/abhay-venkatesh/NRI-authoring-UI .

Author: Jieru Hu<br /> 
Contact: jhu76@wisc.edu

This package is only tested with Ubuntu 16.04 with ROS Kinetic.

Steps to use this package

1. Install ROS Kinetic 

```
roslaunch wpi_jaco_wrapper arm.launch
roslaunch mico_planning path_planning.launch
rosrun mico_planning mico_master.py
python mico_client.py
```
