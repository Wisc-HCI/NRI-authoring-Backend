; Auto-generated. Do not edit!


(cl:in-package wpi_jaco_msgs-msg)


;//! \htmlinclude HomeArmFeedback.msg.html

(cl:defclass <HomeArmFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass HomeArmFeedback (<HomeArmFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomeArmFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomeArmFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wpi_jaco_msgs-msg:<HomeArmFeedback> is deprecated: use wpi_jaco_msgs-msg:HomeArmFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomeArmFeedback>) ostream)
  "Serializes a message object of type '<HomeArmFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomeArmFeedback>) istream)
  "Deserializes a message object of type '<HomeArmFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomeArmFeedback>)))
  "Returns string type for a message object of type '<HomeArmFeedback>"
  "wpi_jaco_msgs/HomeArmFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomeArmFeedback)))
  "Returns string type for a message object of type 'HomeArmFeedback"
  "wpi_jaco_msgs/HomeArmFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomeArmFeedback>)))
  "Returns md5sum for a message object of type '<HomeArmFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomeArmFeedback)))
  "Returns md5sum for a message object of type 'HomeArmFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomeArmFeedback>)))
  "Returns full string definition for message of type '<HomeArmFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomeArmFeedback)))
  "Returns full string definition for message of type 'HomeArmFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define feedback message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomeArmFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomeArmFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'HomeArmFeedback
))
