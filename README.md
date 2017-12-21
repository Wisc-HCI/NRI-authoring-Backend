# ROS backend for the NSF NRI Authoring environment.

** Work in Progress **

Author: Jieru Hu<br /> 
Contact: jhu76@wisc.edu

The related frontend UI could be found at following link:
https://github.com/abhay-venkatesh/NRI-authoring-UI

To install the dependency for the project, please folow the instructions at:
https://drive.google.com/open?id=0B36yoeZ1l3zSQy1ZR3kybWg2UkU

Steps to use:
```
roslaunch wpi_jaco_wrapper arm.launch
roslaunch mico_planning path_planning.launch
rosrun mico_planning mico_master.py
python mico_client.py
```
