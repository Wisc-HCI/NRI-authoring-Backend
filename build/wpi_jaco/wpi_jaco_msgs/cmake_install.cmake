# Install script for directory: /home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jerry/Desktop/therbligs_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/msg" TYPE FILE FILES
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/srv" TYPE FILE FILES
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv"
    "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/action" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/action/HomeArm.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/msg" TYPE FILE FILES
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
    "/home/jerry/Desktop/therbligs_ws/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/cmake" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/devel/include/wpi_jaco_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/devel/share/roseus/ros/wpi_jaco_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/devel/share/common-lisp/ros/wpi_jaco_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/devel/share/gennodejs/ros/wpi_jaco_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/jerry/Desktop/therbligs_ws/devel/lib/python2.7/dist-packages/wpi_jaco_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/devel/lib/python2.7/dist-packages/wpi_jaco_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/cmake" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs/cmake" TYPE FILE FILES
    "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgsConfig.cmake"
    "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_msgs/catkin_generated/installspace/wpi_jaco_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_msgs" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_msgs/package.xml")
endif()

