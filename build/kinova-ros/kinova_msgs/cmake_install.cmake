# Install script for directory: /home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hcilab/Documents/jieru/NRI-authoring-Backend/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/FingerPosition.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/JointAngles.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/JointVelocity.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/JointTorque.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/KinovaPose.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/PoseVelocity.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/msg/CartesianForce.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/srv" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/Start.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/Stop.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/HomeArm.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/SetForceControlParams.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/SetEndEffectorOffset.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/SetNullSpaceModeState.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/SetTorqueControlMode.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/SetTorqueControlParameters.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/ClearTrajectories.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/ZeroTorques.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/AddPoseToCartesianTrajectory.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/srv/RunCOMParametersEstimation.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/action" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/action/ArmJointAngles.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/action/ArmPose.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/action/Arm_KinovaPose.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/action/SetFingersPosition.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmJointAnglesFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/ArmPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/Arm_KinovaPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/kinova_msgs/msg/SetFingersPositionFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/cmake" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_msgs/catkin_generated/installspace/kinova_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/include/kinova_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/roseus/ros/kinova_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/common-lisp/ros/kinova_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/gennodejs/ros/kinova_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/lib/python2.7/dist-packages/kinova_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/lib/python2.7/dist-packages/kinova_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_msgs/catkin_generated/installspace/kinova_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/cmake" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_msgs/catkin_generated/installspace/kinova_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs/cmake" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_msgs/catkin_generated/installspace/kinova_msgsConfig.cmake"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/kinova-ros/kinova_msgs/catkin_generated/installspace/kinova_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_msgs" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/kinova-ros/kinova_msgs/package.xml")
endif()

