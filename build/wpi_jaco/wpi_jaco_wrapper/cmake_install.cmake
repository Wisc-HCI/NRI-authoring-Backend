# Install script for directory: /home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_wrapper

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
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_wrapper/catkin_generated/installspace/wpi_jaco_wrapper.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_wrapper/cmake" TYPE FILE FILES
    "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_wrapper/catkin_generated/installspace/wpi_jaco_wrapperConfig.cmake"
    "/home/jerry/Desktop/therbligs_ws/build/wpi_jaco/wpi_jaco_wrapper/catkin_generated/installspace/wpi_jaco_wrapperConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_wrapper" TYPE FILE FILES "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_wrapper/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper" TYPE EXECUTABLE FILES "/home/jerry/Desktop/therbligs_ws/devel/lib/wpi_jaco_wrapper/jaco_conversions")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jerry/Desktop/therbligs_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_conversions")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper" TYPE EXECUTABLE FILES "/home/jerry/Desktop/therbligs_ws/devel/lib/wpi_jaco_wrapper/jaco_kinematics")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jerry/Desktop/therbligs_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_kinematics")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper" TYPE EXECUTABLE FILES "/home/jerry/Desktop/therbligs_ws/devel/lib/wpi_jaco_wrapper/jaco_manipulation")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jerry/Desktop/therbligs_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_manipulation")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper" TYPE EXECUTABLE FILES "/home/jerry/Desktop/therbligs_ws/devel/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/jerry/Desktop/therbligs_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/wpi_jaco_wrapper/jaco_arm_trajectory_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wpi_jaco_wrapper" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_wrapper/include/wpi_jaco_wrapper/" FILES_MATCHING REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_wrapper/launch" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_wrapper/launch/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/wpi_jaco_wrapper/config" TYPE DIRECTORY FILES "/home/jerry/Desktop/therbligs_ws/src/wpi_jaco/wpi_jaco_wrapper/config/")
endif()

