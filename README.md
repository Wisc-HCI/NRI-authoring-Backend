# ROS backend for the NSF NRI Authoring environment.

** Work in Progress **

This is the github repository of the backend part of the NRI-Authoring Environment, developed in Wisconsin HCI lab from UW-Madison. The backend part is integrated with wpi_jaco package (http://wiki.ros.org/wpi_jaco) which is used to communicate with Kinova's MICO arm and also provides config file for MICO arm to do motion planning with Moveit Framework in ROS. Our team also created a front-end Web UI to interact with this backend code. The related frontend UI could be found at following link: https://github.com/Wisc-HCI/nri-authoring-environment .

Author: Jieru Hu<br /> 
Contact: jhu76@wisc.edu

This package is only tested with Ubuntu 16.04 with ROS Kinetic.

Steps to use this package

1. Install ROS Kinetic 
  Follow the instruction on the ROS Kinetic installation page at : http://wiki.ros.org/kinetic/Installation/Ubuntu

2. Install MoveIt (Source Installation):
  Follow the instruction on Moveit Kinetic installation at: http://moveit.ros.org/install/source/
  
3. Install NRI-authoring-Backend
  Navigate to a folder where you want to place the backend part:
  Clone the repository by:
```
git clone git@github.com:Wisc-HCI/NRI-authoring-Backend.git
```

Source the workspace (put this line in ~/.bachrc):
```
source PATH-TO-WORKSPACE/devel/setup.bash
```
