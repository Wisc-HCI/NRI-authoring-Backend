// Auto-generated. Do not edit!

// (in-package wpi_jaco_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JacoFingerVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finger1Vel = null;
      this.finger2Vel = null;
      this.finger3Vel = null;
    }
    else {
      if (initObj.hasOwnProperty('finger1Vel')) {
        this.finger1Vel = initObj.finger1Vel
      }
      else {
        this.finger1Vel = 0.0;
      }
      if (initObj.hasOwnProperty('finger2Vel')) {
        this.finger2Vel = initObj.finger2Vel
      }
      else {
        this.finger2Vel = 0.0;
      }
      if (initObj.hasOwnProperty('finger3Vel')) {
        this.finger3Vel = initObj.finger3Vel
      }
      else {
        this.finger3Vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JacoFingerVel
    // Serialize message field [finger1Vel]
    bufferOffset = _serializer.float32(obj.finger1Vel, buffer, bufferOffset);
    // Serialize message field [finger2Vel]
    bufferOffset = _serializer.float32(obj.finger2Vel, buffer, bufferOffset);
    // Serialize message field [finger3Vel]
    bufferOffset = _serializer.float32(obj.finger3Vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JacoFingerVel
    let len;
    let data = new JacoFingerVel(null);
    // Deserialize message field [finger1Vel]
    data.finger1Vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finger2Vel]
    data.finger2Vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [finger3Vel]
    data.finger3Vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wpi_jaco_msgs/JacoFingerVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a931e1014161865b6137e2ee19991131';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 finger1Vel  # velocity for thumb
    float32 finger2Vel  # velocity for top finger
    float32 finger3Vel  # velocity for bottom finger
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JacoFingerVel(null);
    if (msg.finger1Vel !== undefined) {
      resolved.finger1Vel = msg.finger1Vel;
    }
    else {
      resolved.finger1Vel = 0.0
    }

    if (msg.finger2Vel !== undefined) {
      resolved.finger2Vel = msg.finger2Vel;
    }
    else {
      resolved.finger2Vel = 0.0
    }

    if (msg.finger3Vel !== undefined) {
      resolved.finger3Vel = msg.finger3Vel;
    }
    else {
      resolved.finger3Vel = 0.0
    }

    return resolved;
    }
};

module.exports = JacoFingerVel;
