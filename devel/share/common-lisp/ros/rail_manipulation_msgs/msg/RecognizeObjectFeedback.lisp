; Auto-generated. Do not edit!


(cl:in-package rail_manipulation_msgs-msg)


;//! \htmlinclude RecognizeObjectFeedback.msg.html

(cl:defclass <RecognizeObjectFeedback> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RecognizeObjectFeedback (<RecognizeObjectFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeObjectFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeObjectFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rail_manipulation_msgs-msg:<RecognizeObjectFeedback> is deprecated: use rail_manipulation_msgs-msg:RecognizeObjectFeedback instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RecognizeObjectFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rail_manipulation_msgs-msg:message-val is deprecated.  Use rail_manipulation_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeObjectFeedback>) ostream)
  "Serializes a message object of type '<RecognizeObjectFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeObjectFeedback>) istream)
  "Deserializes a message object of type '<RecognizeObjectFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeObjectFeedback>)))
  "Returns string type for a message object of type '<RecognizeObjectFeedback>"
  "rail_manipulation_msgs/RecognizeObjectFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeObjectFeedback)))
  "Returns string type for a message object of type 'RecognizeObjectFeedback"
  "rail_manipulation_msgs/RecognizeObjectFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeObjectFeedback>)))
  "Returns md5sum for a message object of type '<RecognizeObjectFeedback>"
  "5f003d6bcc824cbd51361d66d8e4f76c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeObjectFeedback)))
  "Returns md5sum for a message object of type 'RecognizeObjectFeedback"
  "5f003d6bcc824cbd51361d66d8e4f76c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeObjectFeedback>)))
  "Returns full string definition for message of type '<RecognizeObjectFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%string message          # The current state message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeObjectFeedback)))
  "Returns full string definition for message of type 'RecognizeObjectFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%string message          # The current state message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeObjectFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeObjectFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeObjectFeedback
    (cl:cons ':message (message msg))
))