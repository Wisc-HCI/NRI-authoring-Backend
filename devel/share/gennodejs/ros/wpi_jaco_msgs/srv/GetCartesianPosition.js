// Auto-generated. Do not edit!

// (in-package wpi_jaco_msgs.srv)


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

class GetCartesianPositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCartesianPositionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCartesianPositionRequest
    let len;
    let data = new GetCartesianPositionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wpi_jaco_msgs/GetCartesianPositionRequest';
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
    const resolved = new GetCartesianPositionRequest(null);
    return resolved;
    }
};

class GetCartesianPositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCartesianPositionResponse
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCartesianPositionResponse
    let len;
    let data = new GetCartesianPositionResponse(null);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wpi_jaco_msgs/GetCartesianPositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90eff4f5bd7896007c2525f114434660';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist pos
    
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCartesianPositionResponse(null);
    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Twist.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCartesianPositionRequest,
  Response: GetCartesianPositionResponse,
  md5sum() { return '90eff4f5bd7896007c2525f114434660'; },
  datatype() { return 'wpi_jaco_msgs/GetCartesianPosition'; }
};
