// Auto-generated. Do not edit!

// (in-package ece_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Phase = require('./Phase.js');
let StationType = require('./StationType.js');

//-----------------------------------------------------------

class BasicContainer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID_exp = null;
      this.ID_dest = null;
      this.phase = null;
      this.station_type = null;
    }
    else {
      if (initObj.hasOwnProperty('ID_exp')) {
        this.ID_exp = initObj.ID_exp
      }
      else {
        this.ID_exp = 0;
      }
      if (initObj.hasOwnProperty('ID_dest')) {
        this.ID_dest = initObj.ID_dest
      }
      else {
        this.ID_dest = 0;
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = new Phase();
      }
      if (initObj.hasOwnProperty('station_type')) {
        this.station_type = initObj.station_type
      }
      else {
        this.station_type = new StationType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BasicContainer
    // Serialize message field [ID_exp]
    bufferOffset = _serializer.uint8(obj.ID_exp, buffer, bufferOffset);
    // Serialize message field [ID_dest]
    bufferOffset = _serializer.uint8(obj.ID_dest, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = Phase.serialize(obj.phase, buffer, bufferOffset);
    // Serialize message field [station_type]
    bufferOffset = StationType.serialize(obj.station_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BasicContainer
    let len;
    let data = new BasicContainer(null);
    // Deserialize message field [ID_exp]
    data.ID_exp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ID_dest]
    data.ID_dest = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = Phase.deserialize(buffer, bufferOffset);
    // Deserialize message field [station_type]
    data.station_type = StationType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ece_msgs/BasicContainer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b89e5ecc81a0e7b1d5b7bf77ae93b6d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ID expediteur
    uint8 ID_exp
    
    # ID destinataire
    uint8 ID_dest
    
    # Phase de plattoning
    Phase phase
    
    # Type de station
    StationType station_type
    ================================================================================
    MSG: ece_msgs/Phase
    # Phase de plattoning
    uint8 value
    
    uint8 INIT = 0
    uint8 INSERTION = 1
    uint8 DESINSERTION = 2
    uint8 FEU = 3
    uint8 FREINAGE_URG = 4
    ================================================================================
    MSG: ece_msgs/StationType
    uint8 value
    
    uint8 UNKNOWN = 0
    uint8 PEDESTRIAN = 1
    uint8 CYCLIST = 2
    uint8 MOPED = 3
    uint8 MOTORCYCLE = 4
    uint8 PASSENGER_CAR = 5
    uint8 BUS = 6
    uint8 LIGHT_TRUCK = 7
    uint8 HEAVY_TRUCK = 8
    uint8 TRAILER = 9
    uint8 SPECIAL_VEHICLE = 10
    uint8 TRAM = 11
    uint8 ROAD_SIDE_UNIT = 15
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BasicContainer(null);
    if (msg.ID_exp !== undefined) {
      resolved.ID_exp = msg.ID_exp;
    }
    else {
      resolved.ID_exp = 0
    }

    if (msg.ID_dest !== undefined) {
      resolved.ID_dest = msg.ID_dest;
    }
    else {
      resolved.ID_dest = 0
    }

    if (msg.phase !== undefined) {
      resolved.phase = Phase.Resolve(msg.phase)
    }
    else {
      resolved.phase = new Phase()
    }

    if (msg.station_type !== undefined) {
      resolved.station_type = StationType.Resolve(msg.station_type)
    }
    else {
      resolved.station_type = new StationType()
    }

    return resolved;
    }
};

module.exports = BasicContainer;
