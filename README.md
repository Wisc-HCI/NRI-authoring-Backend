# Backend ROS Implementation for NSF NRI Authoring environment

** Work in Progress **

This is the github repository of the backend part of the NRI-Authoring Environment, developed in Wisconsin HCI lab from UW-Madison. The backend part is integrated with wpi_jaco package (http://wiki.ros.org/wpi_jaco) which is used to communicate with Kinova's MICO arm and also provides config file for MICO arm to do motion planning with Moveit Framework in ROS. Our team also created a front-end Web UI to interact with this backend code. The related frontend UI could be found at following link: https://github.com/Wisc-HCI/nri-authoring-environment. Our entire authoring system diagram could be found at following: https://drive.google.com/file/d/1kFAraRG7uNckDeX9NCUA1vOekMJZl78d/view?usp=sharing 

## Getting Started
This package is only tested with Ubuntu 16.04 with ROS Kinetic. Follow the instructions to install the repository to your local machine. For problems encounters, fell free to contact me at (jhu76@wisc.edu).

### Install Kinova MICO SDK
This step sets up physical connection with Mico arm.
Go to http://www.kinovarobotics.com/innovation-robotics/support/?section=resources, open [KINOVA SDK MICO](https://drive.google.com/file/d/0B790iVm0vRTlUkV2ZnBDdGVuM2M/view). Download the SDK package, choose the right os platform and install the sdk following the instructions.

### Steps to install this package

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
  Make sure the build folder is clean:
  ```
  cd build
  rm -rf *
  ```
  Let's build the workspace:
  ```
  catkin_make
  ```
4. Install rosbridge_suit
  This is the part to allow communication between frontend and backend, or ROS from a different machine.
  ```
  roslaunch rosbridge_server rosbridge_websocket.launch
  ```

### Potential Error in the installation process
1. Rail_manipulation-msgs missing in the build process:
  Solution: cd into the src folder and clone the official rail_manipulation_msgs repo at (https://github.com/GT-RAIL/rail_manipulation_msgs). Then try catkin_make again.
2. For any moveit package missing, make sure you have follow the installation instructions from the Moveit. 



## Steps to use this package

### Use NRI-authoring-Backend with Real MICO arm
  Run:
  ```
  ./launch_with_robot.sh
  ```
  This script will bring up the main backend master for executing the therbligs, MoveIt for motion planning, establish the connection with KINOVA MICO, and a robot position publisher node to the front-end through ROS-bridge.


### Use NRI-authoring-Backend with simulation
  Run:
  ```
  ./launch_no_robot.sh
  ```
  This script will bring up the main backend master for executing the therbligs, MoveIt for motion planning, a robot position publisher node to the front-end through ROS-bridge and VREP simulation.


### Potential Error in running the backend code
For those who encounter the error when running the moveit_rviz_plugin: Error string: Could not load library (Poco exception = libopencv_imgproc3.so.3.2). Try to build the MoveIt package again, and come back to run the launchROS.sh.



## Author
- [Jieru Hu] (https://github.com/JerryHu1994)<br/>
- Undergraduate student in University of Wisconsin Madison<br/>
- Contact: jhu76@wisc.edu<br/>
- For any other questions, feel free to contact me at jhu76@wisc.edu.

## License
The is project is developed for research use in Wisconsin Human-Computer Interaction Laboratory.
