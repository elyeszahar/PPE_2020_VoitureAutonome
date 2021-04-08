// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferencePosition = require('./ReferencePosition.js');

//-----------------------------------------------------------

class Init {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination = null;
      this.actual_position = null;
    }
    else {
      if (initObj.hasOwnProperty('destination')) {
        this.destination = initObj.destination
      }
      else {
        this.destination = new ReferencePosition();
      }
      if (initObj.hasOwnProperty('actual_position')) {
        this.actual_position = initObj.actual_position
      }
      else {
        this.actual_position = new ReferencePosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Init
    // Serialize message field [destination]
    bufferOffset = ReferencePosition.serialize(obj.destination, buffer, bufferOffset);
    // Serialize message field [actual_position]
    bufferOffset = ReferencePosition.serialize(obj.actual_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Init
    let len;
    let data = new Init(null);
    // Deserialize message field [destination]
    data.destination = ReferencePosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [actual_position]
    data.actual_position = ReferencePosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/Init';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98e72c61b91b7db811fccea348b6d240';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Destination : 8 octets
    ReferencePosition destination
    
    # Actual position : 8 octets
    ReferencePosition actual_position
    
    
    
    ================================================================================
    MSG: ece_msgs/ReferencePosition
    int64 latitude # 0.1 micro degree
    int64 longitude # 0.1 micro degree
    int32 altitude
    
    int64 LATITUDE_UNAVAILABLE = 900000001
    int64 LONGITUDE_UNAVAILABLE = 1800000001
    int32 ALTITUDE_UNAVAILABLE = 800001
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Init(null);
    if (msg.destination !== undefined) {
      resolved.destination = ReferencePosition.Resolve(msg.destination)
    }
    else {
      resolved.destination = new ReferencePosition()
    }

    if (msg.actual_position !== undefined) {
      resolved.actual_position = ReferencePosition.Resolve(msg.actual_position)
    }
    else {
      resolved.actual_position = new ReferencePosition()
    }

    return resolved;
    }
};

module.exports = Init;
