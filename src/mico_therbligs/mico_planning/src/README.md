mico_planning package is the folder contains the entire code base of the backend implementation of the
NRI-Authoring enviroment. The following is a list of documentation on each file.

## [mico_parser.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_parser.py):
The class is used by the mico master tp parse the json-format message sent from the front-end, typically it would be a json plan for execution.

## [mico_planner.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_planner.py):
The mico planner is the class representing the Kinova mico_arm. Mico_planner connects with MoveIt package
to generate trajectory(joint positions) for the mico arm. Mico_planner connects with the
robotiq_85_gripper module to control the gripper installed on the mico_hand. Mico_planner is also
responsible for handling the simulation in VREP.

The list of therbligs implemented in this class includes:
  1. Transport_Empty: The planner is given X,Y,Z position and orientation of the target end-effector, MoveIt commander it used to generate the optimal trajectory for the arm, and the plan is executed.
  2. Grasp: The gripper will be set to grasp the object to a specified position.
  3. Transport_Loaded: The planner is given X,Y,Z position and orientation of the target end-effector, MoveIt commander it used to generate the optimal trajectory for the arm, and the plan is executed. The object is grasped along the way is is transported.
  4. Release: The gripper will be set to release the object to a specified position.
  5. Rest: The planner moves arm to a position and rest. Typically this would be the end of a therbligs plan.
  6. Hold: Hold the robot arm for seconds.

## [mico_master.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_master.py):
Mico master is the main thread running as the backend part. It is given a json plan contains a list of therbligs to execute. It uses mico_parser to parse the information from json and calls functions from mico_planner to execute therbligs on the real robot. It is run once the mico_server received a ExecutePlan message.

## [mico_server.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_server.py)
Mico server is an http server spinning on the backend, which communicates with the node server in the front-end. It creates routing and handling for different HTTP requests sent from the front-end. It is an interface between front-end UI and backend ROS implementation.
    The routing path includes:
    1. CheckROSLive
    2. LaunchROS
    3. ExecutePlan
    4. Exit
  
## [mico_gripper.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_gripper.py)
Mico gripper is a wrapper around the robotiq gripper package for this package use. An example of gripper code could be found inside the [official robotiq package](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/robotiq_85_gripper/robotiq_85_driver/src/robotiq_85/robotiq_85_gripper_test.py).

## [mico_positionpublisher.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_positionpublisher.py):
Mico_positionpublisher publishes a geometry_msg to the rostopic named "end_effector_position", so that
the front-end could directly fetch the end_effector_position through ROS-bridge.

## [launch_with_robot.sh](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/launch_with_robot.sh)
This script is used to launch entire ROS backend, including Kinova-ros, Robotiq, MoveIT and Rosbridge. This script will be called from UI.

## [mico_simulator.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_simulator.py):
Mico_simulator connects to the VREP through remoteAPI call. The main two simulation it provides is to
move the mico_arm and mico_hand.

## vrep.py;vrepConst.py;remoteApi.so:
    These files are imported from the VREP package. Don't touch them at ay time.'

## jsons/
  The jsons folder contains a list of request and reply jsons that will get send back and forth between the front-end UI and backend ROS.

## Ros-Bridge Part
We want to get robot end-effector position in UI from ROS as quickly as possible. One approuch for front-end to communicate with ROS is to send Jsons from the NodeJS socket to the python socket in ROS(https://github.com/JerryHu1994/NRI-authoring-Backend/tree/master/src/wpi_jaco/mico_planning/src/jsons). Here we found another easier approuch to achieve the same goal by using Rosbridge package(http://wiki.ros.org/rosbridge_suite).

As the ROSbridge provides an interface including a WebServer to interact with the ROS. In the front-end, we would just need listener to keep listening a certain topic named end_effector_position in ROS. In the back-end ROS, we would create a node and let it keep publishing robot end-effector position as a standard string to the ROS topic end_effector_position.

A sample Rosbridge example could be found: http://wiki.ros.org/roslibjs/Tutorials/BasicRosFunctionality
