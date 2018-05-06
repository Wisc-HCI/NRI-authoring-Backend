mico_planning is the folder contains the entire code base of the backend implementation of the
NRI-Authoring enviroment. The following is a list of documentation on each file.

## mico_parser.py:
    The class is used by the mico master parse the json-format message sent from the front-end or mico_client.
The exact json format is defined by the front-end.

## [mico_planner.py](https://github.com/JerryHu1994/NRI-authoring-Backend/blob/master/src/mico_therbligs/mico_planning/src/mico_planner.py):
    The mico planner is the class representing the Kinova mico_arm. Mico_planner connects with MoveIt package
to generate trajectory(joint positions) for the mico arm. Mico_planner connects with the
robotiq_85_gripper module to control the gripper installed on the mico_hand. Mico_planner is also
responsible for handling the simulation in VREP.

    The list of robotic behaviors implemented in this class includes:
  1. Transport_Empty: The planner is given X,Y,Z position and orientation of the target end-effector, MoveIt commander it used to generate the optimal trajectory for the arm, and the plan is executed.
  2. Grasp: The gripper will be set to grasp the object with specific effort.
  3. Transport_Loaded: The planner is given X,Y,Z position and orientation of the target end-effector, MoveIt commander it used to generate the optimal trajectory for the arm, and the plan is executed. The object is grasped along the way is is transported.
  4. Transport_Home: The planner returns to the home position, given the generated optimal trajectory given the current position.
  5. Read_Position: The planner calls get_current_pose().pose to get the current end-effector X,Y,Z position as well as the orientation. The position information is sent to the front-end through the mico master. 

## mico_master.py:
    Mico master is the main thread running as the backend part. The master initializes the mico_planner, listens for the connection from the front-end.
Once it receives a json query from the client, mico_master use mico_parser to parse the infomation from the json,
executes the corresponding instruction, and construct a reply json back to the front-end port.

## mico_positionpublisher.py:
    Mico_positionpublisher publishes a geometry_msg to the rostopic named "end_effector_position", so that
the front-end could directly fetch the end_effector_position through ROS-bridge.

## mico_simulator.py:
    Mico_simulator connects to the VREP through remoteAPI call. The main two simulation it provides is to
move the mico_arm and mico_hand.

## vrep.py;vrepConst.py;remotePai.so:
    These files are imported from the VREP package. Don't touch them at ay time.'

## jsons/
  The jsons folder contains a list of request and reply jsons that will get send back and forth between the front-end UI and backend ROS.

## Ros-Bridge Part
We want to get robot end-effector position in UI from ROS as quickly as possible. One approuch for front-end to communicate with ROS is to send Jsons from the NodeJS socket to the python socket in ROS(https://github.com/JerryHu1994/NRI-authoring-Backend/tree/master/src/wpi_jaco/mico_planning/src/jsons). Here we found another easier approuch to achieve the same goal by using Rosbridge package(http://wiki.ros.org/rosbridge_suite).

As the ROSbridge provides an interface including a WebServer to interact with the ROS. In the front-end, we would just need listener to keep listening a certain topic named end_effector_position in ROS. In the back-end ROS, we would create a node and let it keep publishing robot end-effector position as a standard string to the ROS topic end_effector_position.

A sample Rosbridge example could be found: http://wiki.ros.org/roslibjs/Tutorials/BasicRosFunctionality
