// Auto-generated. Do not edit!

// (in-package arm_lib.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.yx = null;
      this.yy = null;
      this.yz = null;
      this.zx = null;
      this.zy = null;
      this.zz = null;
      this.alpha = null;
      this.beta = null;
      this.gamma = null;
      this.translationDist = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('yx')) {
        this.yx = initObj.yx
      }
      else {
        this.yx = 0.0;
      }
      if (initObj.hasOwnProperty('yy')) {
        this.yy = initObj.yy
      }
      else {
        this.yy = 0.0;
      }
      if (initObj.hasOwnProperty('yz')) {
        this.yz = initObj.yz
      }
      else {
        this.yz = 0.0;
      }
      if (initObj.hasOwnProperty('zx')) {
        this.zx = initObj.zx
      }
      else {
        this.zx = 0.0;
      }
      if (initObj.hasOwnProperty('zy')) {
        this.zy = initObj.zy
      }
      else {
        this.zy = 0.0;
      }
      if (initObj.hasOwnProperty('zz')) {
        this.zz = initObj.zz
      }
      else {
        this.zz = 0.0;
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = 0.0;
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = 0.0;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = 0.0;
      }
      if (initObj.hasOwnProperty('translationDist')) {
        this.translationDist = initObj.translationDist
      }
      else {
        this.translationDist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Angles
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [yx]
    bufferOffset = _serializer.float32(obj.yx, buffer, bufferOffset);
    // Serialize message field [yy]
    bufferOffset = _serializer.float32(obj.yy, buffer, bufferOffset);
    // Serialize message field [yz]
    bufferOffset = _serializer.float32(obj.yz, buffer, bufferOffset);
    // Serialize message field [zx]
    bufferOffset = _serializer.float32(obj.zx, buffer, bufferOffset);
    // Serialize message field [zy]
    bufferOffset = _serializer.float32(obj.zy, buffer, bufferOffset);
    // Serialize message field [zz]
    bufferOffset = _serializer.float32(obj.zz, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.float32(obj.alpha, buffer, bufferOffset);
    // Serialize message field [beta]
    bufferOffset = _serializer.float32(obj.beta, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.float32(obj.gamma, buffer, bufferOffset);
    // Serialize message field [translationDist]
    bufferOffset = _serializer.float32(obj.translationDist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Angles
    let len;
    let data = new Angles(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yx]
    data.yx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yy]
    data.yy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yz]
    data.yz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zx]
    data.zx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zy]
    data.zy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zz]
    data.zz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beta]
    data.beta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [translationDist]
    data.translationDist = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_lib/Angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efc6069eeaa1308aece036b76bdc2160';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 z
    float32 yx
    float32 yy
    float32 yz
    float32 zx
    float32 zy
    float32 zz
    float32 alpha
    float32 beta
    float32 gamma
    float32 translationDist
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Angles(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.yx !== undefined) {
      resolved.yx = msg.yx;
    }
    else {
      resolved.yx = 0.0
    }

    if (msg.yy !== undefined) {
      resolved.yy = msg.yy;
    }
    else {
      resolved.yy = 0.0
    }

    if (msg.yz !== undefined) {
      resolved.yz = msg.yz;
    }
    else {
      resolved.yz = 0.0
    }

    if (msg.zx !== undefined) {
      resolved.zx = msg.zx;
    }
    else {
      resolved.zx = 0.0
    }

    if (msg.zy !== undefined) {
      resolved.zy = msg.zy;
    }
    else {
      resolved.zy = 0.0
    }

    if (msg.zz !== undefined) {
      resolved.zz = msg.zz;
    }
    else {
      resolved.zz = 0.0
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = 0.0
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = 0.0
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = 0.0
    }

    if (msg.translationDist !== undefined) {
      resolved.translationDist = msg.translationDist;
    }
    else {
      resolved.translationDist = 0.0
    }

    return resolved;
    }
};

module.exports = Angles;
