// Auto-generated. Do not edit!

// (in-package etsi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AccelerationControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccelerationControl
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccelerationControl
    let len;
    let data = new AccelerationControl(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'etsi_msgs/AccelerationControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95585d5f00fa07f89453fa3109d62a8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 value
    
    uint8 BRAKE_PEDAL_ENGAGED = 1
    uint8 GAS_PEDAL_ENGAGED = 2
    uint8 EMERGENCY_BRAKE_ENGAGED = 4
    uint8 COLLISION_WARNING_ENGAGED = 8
    uint8 ACC_ENGAGED = 16
    uint8 CRUISE_CONTROL_ENGAGED = 32
    uint8 SPEED_LIMITER_ENGAGED = 64
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccelerationControl(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
AccelerationControl.Constants = {
  BRAKE_PEDAL_ENGAGED: 1,
  GAS_PEDAL_ENGAGED: 2,
  EMERGENCY_BRAKE_ENGAGED: 4,
  COLLISION_WARNING_ENGAGED: 8,
  ACC_ENGAGED: 16,
  CRUISE_CONTROL_ENGAGED: 32,
  SPEED_LIMITER_ENGAGED: 64,
}

module.exports = AccelerationControl;
