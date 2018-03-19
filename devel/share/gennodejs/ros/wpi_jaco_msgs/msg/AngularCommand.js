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

class AngularCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.armCommand = null;
      this.fingerCommand = null;
      this.repeat = null;
      this.joints = null;
      this.fingers = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = false;
      }
      if (initObj.hasOwnProperty('armCommand')) {
        this.armCommand = initObj.armCommand
      }
      else {
        this.armCommand = false;
      }
      if (initObj.hasOwnProperty('fingerCommand')) {
        this.fingerCommand = initObj.fingerCommand
      }
      else {
        this.fingerCommand = false;
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = false;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
      if (initObj.hasOwnProperty('fingers')) {
        this.fingers = initObj.fingers
      }
      else {
        this.fingers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AngularCommand
    // Serialize message field [position]
    bufferOffset = _serializer.bool(obj.position, buffer, bufferOffset);
    // Serialize message field [armCommand]
    bufferOffset = _serializer.bool(obj.armCommand, buffer, bufferOffset);
    // Serialize message field [fingerCommand]
    bufferOffset = _serializer.bool(obj.fingerCommand, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.bool(obj.repeat, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    // Serialize message field [fingers]
    bufferOffset = _arraySerializer.float32(obj.fingers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AngularCommand
    let len;
    let data = new AngularCommand(null);
    // Deserialize message field [position]
    data.position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armCommand]
    data.armCommand = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fingerCommand]
    data.fingerCommand = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fingers]
    data.fingers = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joints.length;
    length += 4 * object.fingers.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wpi_jaco_msgs/AngularCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f29b6dabb764f8caf0ebba4c1ef528d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool position       # true for a position command, false for a velocity command
    bool armCommand     # true if this command includes arm joint inputs
    bool fingerCommand  # true if this command includes finger inputs
    bool repeat         # true if the command should be repeatedly sent over a short interval
    float32[] joints    # position (rad) or velocity (rad/s) arm command
    float32[] fingers   # position (rad) or velocity (rad/s) finger command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AngularCommand(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = false
    }

    if (msg.armCommand !== undefined) {
      resolved.armCommand = msg.armCommand;
    }
    else {
      resolved.armCommand = false
    }

    if (msg.fingerCommand !== undefined) {
      resolved.fingerCommand = msg.fingerCommand;
    }
    else {
      resolved.fingerCommand = false
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = msg.repeat;
    }
    else {
      resolved.repeat = false
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    if (msg.fingers !== undefined) {
      resolved.fingers = msg.fingers;
    }
    else {
      resolved.fingers = []
    }

    return resolved;
    }
};

module.exports = AngularCommand;
