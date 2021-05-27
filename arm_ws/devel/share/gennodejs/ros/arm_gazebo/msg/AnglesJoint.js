// Auto-generated. Do not edit!

// (in-package arm_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AnglesJoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointA = null;
      this.jointB = null;
      this.jointC = null;
      this.jointD = null;
    }
    else {
      if (initObj.hasOwnProperty('jointA')) {
        this.jointA = initObj.jointA
      }
      else {
        this.jointA = 0.0;
      }
      if (initObj.hasOwnProperty('jointB')) {
        this.jointB = initObj.jointB
      }
      else {
        this.jointB = 0.0;
      }
      if (initObj.hasOwnProperty('jointC')) {
        this.jointC = initObj.jointC
      }
      else {
        this.jointC = 0.0;
      }
      if (initObj.hasOwnProperty('jointD')) {
        this.jointD = initObj.jointD
      }
      else {
        this.jointD = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnglesJoint
    // Serialize message field [jointA]
    bufferOffset = _serializer.float32(obj.jointA, buffer, bufferOffset);
    // Serialize message field [jointB]
    bufferOffset = _serializer.float32(obj.jointB, buffer, bufferOffset);
    // Serialize message field [jointC]
    bufferOffset = _serializer.float32(obj.jointC, buffer, bufferOffset);
    // Serialize message field [jointD]
    bufferOffset = _serializer.float32(obj.jointD, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnglesJoint
    let len;
    let data = new AnglesJoint(null);
    // Deserialize message field [jointA]
    data.jointA = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [jointB]
    data.jointB = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [jointC]
    data.jointC = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [jointD]
    data.jointD = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_gazebo/AnglesJoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5eaaa2abf697b049f6fc9d4bce9e1e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 jointA
    float32 jointB
    float32 jointC
    float32 jointD
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnglesJoint(null);
    if (msg.jointA !== undefined) {
      resolved.jointA = msg.jointA;
    }
    else {
      resolved.jointA = 0.0
    }

    if (msg.jointB !== undefined) {
      resolved.jointB = msg.jointB;
    }
    else {
      resolved.jointB = 0.0
    }

    if (msg.jointC !== undefined) {
      resolved.jointC = msg.jointC;
    }
    else {
      resolved.jointC = 0.0
    }

    if (msg.jointD !== undefined) {
      resolved.jointD = msg.jointD;
    }
    else {
      resolved.jointD = 0.0
    }

    return resolved;
    }
};

module.exports = AnglesJoint;
