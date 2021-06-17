// Auto-generated. Do not edit!

// (in-package arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
      this.link_lengths = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
      if (initObj.hasOwnProperty('link_lengths')) {
        this.link_lengths = initObj.link_lengths
      }
      else {
        this.link_lengths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float64(obj.joint_angles, buffer, bufferOffset, null);
    // Serialize message field [link_lengths]
    bufferOffset = _arraySerializer.float64(obj.link_lengths, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKRequest
    let len;
    let data = new FKRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [link_lengths]
    data.link_lengths = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_angles.length;
    length += 8 * object.link_lengths.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/FKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a042249472409763a14cb741bdf7d15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_angles
    float64[] link_lengths
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FKRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    if (msg.link_lengths !== undefined) {
      resolved.link_lengths = msg.link_lengths;
    }
    else {
      resolved.link_lengths = []
    }

    return resolved;
    }
};

class FKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_pose')) {
        this.actuator_pose = initObj.actuator_pose
      }
      else {
        this.actuator_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKResponse
    // Serialize message field [actuator_pose]
    bufferOffset = _arraySerializer.float64(obj.actuator_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKResponse
    let len;
    let data = new FKResponse(null);
    // Deserialize message field [actuator_pose]
    data.actuator_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.actuator_pose.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/FKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4222ac6c84f861c87f0dc07027fcf01f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] actuator_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FKResponse(null);
    if (msg.actuator_pose !== undefined) {
      resolved.actuator_pose = msg.actuator_pose;
    }
    else {
      resolved.actuator_pose = []
    }

    return resolved;
    }
};

module.exports = {
  Request: FKRequest,
  Response: FKResponse,
  md5sum() { return '51868960d0b668b22b07dfd57523e61b'; },
  datatype() { return 'arm_gazebo/FK'; }
};
