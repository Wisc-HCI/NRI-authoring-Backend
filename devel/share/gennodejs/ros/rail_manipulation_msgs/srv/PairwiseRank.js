// Auto-generated. Do not edit!

// (in-package rail_manipulation_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PairwiseRankRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PairwiseRankRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PairwiseRankRequest
    let len;
    let data = new PairwiseRankRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rail_manipulation_msgs/PairwiseRankRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PairwiseRankRequest(null);
    return resolved;
    }
};

class PairwiseRankResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grasp_list = null;
    }
    else {
      if (initObj.hasOwnProperty('grasp_list')) {
        this.grasp_list = initObj.grasp_list
      }
      else {
        this.grasp_list = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PairwiseRankResponse
    // Serialize message field [grasp_list]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.grasp_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PairwiseRankResponse
    let len;
    let data = new PairwiseRankResponse(null);
    // Deserialize message field [grasp_list]
    data.grasp_list = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.grasp_list);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rail_manipulation_msgs/PairwiseRankResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c2ebd2e566677f8b421547f8e5266ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray grasp_list
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PairwiseRankResponse(null);
    if (msg.grasp_list !== undefined) {
      resolved.grasp_list = geometry_msgs.msg.PoseArray.Resolve(msg.grasp_list)
    }
    else {
      resolved.grasp_list = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: PairwiseRankRequest,
  Response: PairwiseRankResponse,
  md5sum() { return '6c2ebd2e566677f8b421547f8e5266ee'; },
  datatype() { return 'rail_manipulation_msgs/PairwiseRank'; }
};
