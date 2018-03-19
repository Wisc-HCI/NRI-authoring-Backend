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


//-----------------------------------------------------------

class EStopRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enableEStop = null;
    }
    else {
      if (initObj.hasOwnProperty('enableEStop')) {
        this.enableEStop = initObj.enableEStop
      }
      else {
        this.enableEStop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EStopRequest
    // Serialize message field [enableEStop]
    bufferOffset = _serializer.bool(obj.enableEStop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EStopRequest
    let len;
    let data = new EStopRequest(null);
    // Deserialize message field [enableEStop]
    data.enableEStop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wpi_jaco_msgs/EStopRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd240ad7bcf146ea2ed0786ad3ef05f32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enableEStop
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EStopRequest(null);
    if (msg.enableEStop !== undefined) {
      resolved.enableEStop = msg.enableEStop;
    }
    else {
      resolved.enableEStop = false
    }

    return resolved;
    }
};

class EStopResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EStopResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EStopResponse
    let len;
    let data = new EStopResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wpi_jaco_msgs/EStopResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EStopResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: EStopRequest,
  Response: EStopResponse,
  md5sum() { return '41f7cecff29b7a7b77475ec005e19010'; },
  datatype() { return 'wpi_jaco_msgs/EStop'; }
};
