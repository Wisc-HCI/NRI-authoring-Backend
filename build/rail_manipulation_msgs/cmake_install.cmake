# Install script for directory: /home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/msg/Grasp.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/msg/GraspingState.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/msg/GraspFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/msg/SegmentedObject.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/msg/SegmentedObjectList.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/srv" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/srv/CallIK.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/srv/CartesianPath.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/srv/PairwiseRank.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/srv/PrepareGrasp.srv"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/srv/SuggestGrasps.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/action" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/Arm.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/Gripper.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/Lift.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/MoveToJointPose.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/MoveToPose.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/Pickup.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/Primitive.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/RecognizeObject.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/Store.action"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/action/VerifyGrasp.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/ArmFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/GripperFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/LiftFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToJointPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/MoveToPoseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PickupFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/PrimitiveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/RecognizeObjectFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/StoreFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/msg" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspAction.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspActionGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspActionResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspActionFeedback.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspGoal.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspResult.msg"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg/VerifyGraspFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/cmake" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/include/rail_manipulation_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/roseus/ros/rail_manipulation_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/common-lisp/ros/rail_manipulation_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/gennodejs/ros/rail_manipulation_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/lib/python2.7/dist-packages/rail_manipulation_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/lib/python2.7/dist-packages/rail_manipulation_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/cmake" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs/cmake" TYPE FILE FILES
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgsConfig.cmake"
    "/home/hcilab/Documents/jieru/NRI-authoring-Backend/build/rail_manipulation_msgs/catkin_generated/installspace/rail_manipulation_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rail_manipulation_msgs" TYPE FILE FILES "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/package.xml")
endif()

