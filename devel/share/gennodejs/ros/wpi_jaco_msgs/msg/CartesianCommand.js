// Auto-generated. Do not edit!

// (in-package wpi_jaco_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CartesianCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.armCommand = null;
      this.fingerCommand = null;
      this.repeat = null;
      this.arm = null;
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
      if (initObj.hasOwnProperty('arm')) {
        this.arm = initObj.arm
      }
      else {
        this.arm = new geometry_msgs.msg.Twist();
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
    // Serializes a message object of type CartesianCommand
    // Serialize message field [position]
    bufferOffset = _serializer.bool(obj.position, buffer, bufferOffset);
    // Serialize message field [armCommand]
    bufferOffset = _serializer.bool(obj.armCommand, buffer, bufferOffset);
    // Serialize message field [fingerCommand]
    bufferOffset = _serializer.bool(obj.fingerCommand, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.bool(obj.repeat, buffer, bufferOffset);
    // Serialize message field [arm]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.arm, buffer, bufferOffset);
    // Serialize message field [fingers]
    bufferOffset = _arraySerializer.float32(obj.fingers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianCommand
    let len;
    let data = new CartesianCommand(null);
    // Deserialize message field [position]
    data.position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armCommand]
    data.armCommand = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fingerCommand]
    data.fingerCommand = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [arm]
    data.arm = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [fingers]
    data.fingers = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.fingers.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wpi_jaco_msgs/CartesianCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be41abcf10fd0ff2a0ead4293f8dfdf1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool position             # true for a position command, false for a velocity command
    bool armCommand           # true if this command includes arm joint inputs
    bool fingerCommand        # true if this command includes finger inputs
    bool repeat               # true if the command should be repeatedly sent over a short interval
    geometry_msgs/Twist arm   # position (m, rad) or velocity (m/s, rad/s) arm command
    float32[] fingers         # position (rad) or velocity (rad/s) finger command
    
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
    const resolved = new CartesianCommand(null);
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

    if (msg.arm !== undefined) {
      resolved.arm = geometry_msgs.msg.Twist.Resolve(msg.arm)
    }
    else {
      resolved.arm = new geometry_msgs.msg.Twist()
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

module.exports = CartesianCommand;
