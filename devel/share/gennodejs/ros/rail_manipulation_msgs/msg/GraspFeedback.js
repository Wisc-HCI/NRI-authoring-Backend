// Auto-generated. Do not edit!

// (in-package rail_manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GraspFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.indices_considered = null;
      this.index_selected = null;
    }
    else {
      if (initObj.hasOwnProperty('indices_considered')) {
        this.indices_considered = initObj.indices_considered
      }
      else {
        this.indices_considered = [];
      }
      if (initObj.hasOwnProperty('index_selected')) {
        this.index_selected = initObj.index_selected
      }
      else {
        this.index_selected = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspFeedback
    // Serialize message field [indices_considered]
    bufferOffset = _arraySerializer.int32(obj.indices_considered, buffer, bufferOffset, null);
    // Serialize message field [index_selected]
    bufferOffset = _serializer.int32(obj.index_selected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspFeedback
    let len;
    let data = new GraspFeedback(null);
    // Deserialize message field [indices_considered]
    data.indices_considered = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [index_selected]
    data.index_selected = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.indices_considered.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rail_manipulation_msgs/GraspFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e864dcbf0eb315180e735726b63001e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] indices_considered           # indices of grasps seen by the user
    int32 index_selected                 # index of grasp selected for execution
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspFeedback(null);
    if (msg.indices_considered !== undefined) {
      resolved.indices_considered = msg.indices_considered;
    }
    else {
      resolved.indices_considered = []
    }

    if (msg.index_selected !== undefined) {
      resolved.index_selected = msg.index_selected;
    }
    else {
      resolved.index_selected = 0
    }

    return resolved;
    }
};

module.exports = GraspFeedback;
