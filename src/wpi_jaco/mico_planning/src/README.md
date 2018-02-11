Here is the documentation related to the implementation of the therbligs code.

## mico_client.py:
  The scripts creates a local socket get connected to the mico master, sends over a json-format therbigs for execution.
  
## mico_parser.py:
  The class is used by the mico master parse the json-format message sent from the front-end or mico_client.
  
## mico_planner.py:
  The mico planner is the class used to interact with the mico arm. 
  The list of operations includes:
  1. Transport_Empty: The planner is given X,Y,Z position and orientation of the target end-effector, MoveIt commander it used to generate the optimal trajectory for the arm, and the plan is executed.
  2. Grasp: The gripper will be set to grasp the object with specific effort.
  3. Transport_Loaded: The planner is given X,Y,Z position and orientation of the target end-effector, MoveIt commander it used to generate the optimal trajectory for the arm, and the plan is executed. The object is grasped along the way is is transported.
  4. Transport_Home: The planner returns to the home position, given the generated optimal trajectory given the current position.
  5. Read_Position: The planner calls get_current_pose().pose to get the current end-effector X,Y,Z position as well as the orientation. The position information is sent to the front-end through the mico master. 
  
## mico_master.py:
  Mico master is the main thread of the backend part. The master listens for the connection from the front-end. Once it receives a json query from the client, master use mico_parse to parse the infomation from the json, executes the corresponding instruction, and construct a reply back to the front-end.

## jsons/
  The jsons folder contains a list of request and reply jsons that will get send back and forth between the front-end UI and backend ROS.

## Ros-Bridge Part
We want to get robot end-effector position in UI from ROS as quickly as possible. One approuch for front-end to communicate with ROS is to send Jsons from the NodeJS socket to the python socket in ROS(https://github.com/JerryHu1994/NRI-authoring-Backend/tree/master/src/wpi_jaco/mico_planning/src/jsons). Here we found another easier approuch to achieve the same goal by using Rosbridge package(http://wiki.ros.org/rosbridge_suite).

As the ROSbridge provides an interface including a WebServer to interact with the ROS. In the front-end, we would just need listener to keep listening a certain topic named end_effector_position in ROS. In the back-end ROS, we would create a node and let it keep publishing robot end-effector position as a standard string to the ROS topic end_effector_position.

A sample Rosbridge example could be found: http://wiki.ros.org/roslibjs/Tutorials/BasicRosFunctionality
