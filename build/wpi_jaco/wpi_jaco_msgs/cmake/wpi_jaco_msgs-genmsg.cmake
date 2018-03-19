# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wpi_jaco_msgs: 10 messages, 6 services")

set(MSG_I_FLAGS "-Iwpi_jaco_msgs:/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg;-Iwpi_jaco_msgs:/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wpi_jaco_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" "wpi_jaco_msgs/HomeArmResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" "wpi_jaco_msgs/AngularCommand:actionlib_msgs/GoalID:std_msgs/Header:wpi_jaco_msgs/HomeArmGoal"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" "geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" ""
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" ""
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" "wpi_jaco_msgs/HomeArmResult:std_msgs/Header:wpi_jaco_msgs/HomeArmActionResult:wpi_jaco_msgs/HomeArmFeedback:wpi_jaco_msgs/HomeArmActionGoal:wpi_jaco_msgs/HomeArmGoal:wpi_jaco_msgs/HomeArmActionFeedback:wpi_jaco_msgs/AngularCommand:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" ""
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" "wpi_jaco_msgs/AngularCommand"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:wpi_jaco_msgs/HomeArmFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" ""
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" "geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" ""
)

get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" NAME_WE)
add_custom_target(_wpi_jaco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wpi_jaco_msgs" "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Services
_generate_srv_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_cpp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Module File
_generate_module_cpp(wpi_jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wpi_jaco_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wpi_jaco_msgs_generate_messages wpi_jaco_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_cpp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wpi_jaco_msgs_gencpp)
add_dependencies(wpi_jaco_msgs_gencpp wpi_jaco_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wpi_jaco_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Services
_generate_srv_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_eus(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Module File
_generate_module_eus(wpi_jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wpi_jaco_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wpi_jaco_msgs_generate_messages wpi_jaco_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_eus _wpi_jaco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wpi_jaco_msgs_geneus)
add_dependencies(wpi_jaco_msgs_geneus wpi_jaco_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wpi_jaco_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Services
_generate_srv_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_lisp(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Module File
_generate_module_lisp(wpi_jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wpi_jaco_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wpi_jaco_msgs_generate_messages wpi_jaco_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_lisp _wpi_jaco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wpi_jaco_msgs_genlisp)
add_dependencies(wpi_jaco_msgs_genlisp wpi_jaco_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wpi_jaco_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Services
_generate_srv_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_nodejs(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Module File
_generate_module_nodejs(wpi_jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wpi_jaco_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wpi_jaco_msgs_generate_messages wpi_jaco_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_nodejs _wpi_jaco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wpi_jaco_msgs_gennodejs)
add_dependencies(wpi_jaco_msgs_gennodejs wpi_jaco_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wpi_jaco_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_msg_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Services
_generate_srv_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)
_generate_srv_py(wpi_jaco_msgs
  "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
)

### Generating Module File
_generate_module_py(wpi_jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wpi_jaco_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wpi_jaco_msgs_generate_messages wpi_jaco_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/JacoFK.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EulerToQuaternion.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/JacoFingerVel.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmResult.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmAction.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/CartesianCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/EStop.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmGoal.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmActionFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg/AngularCommand.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/QuaternionToEuler.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetCartesianPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg/HomeArmFeedback.msg" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/srv/GetAngularPosition.srv" NAME_WE)
add_dependencies(wpi_jaco_msgs_generate_messages_py _wpi_jaco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wpi_jaco_msgs_genpy)
add_dependencies(wpi_jaco_msgs_genpy wpi_jaco_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wpi_jaco_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wpi_jaco_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(wpi_jaco_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(wpi_jaco_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wpi_jaco_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(wpi_jaco_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(wpi_jaco_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wpi_jaco_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(wpi_jaco_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(wpi_jaco_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wpi_jaco_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(wpi_jaco_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(wpi_jaco_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wpi_jaco_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(wpi_jaco_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(wpi_jaco_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
