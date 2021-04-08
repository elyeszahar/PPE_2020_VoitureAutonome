
"use strict";

let VehicleLength = require('./VehicleLength.js');
let Speed = require('./Speed.js');
let simu_CAM = require('./simu_CAM.js');
let simu_ECE = require('./simu_ECE.js');
let ReferencePosition = require('./ReferencePosition.js');
let Altitude = require('./Altitude.js');
let ItsPduHeader = require('./ItsPduHeader.js');
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');

module.exports = {
  VehicleLength: VehicleLength,
  Speed: Speed,
  simu_CAM: simu_CAM,
  simu_ECE: simu_ECE,
  ReferencePosition: ReferencePosition,
  Altitude: Altitude,
  ItsPduHeader: ItsPduHeader,
  PositionConfidenceEllipse: PositionConfidenceEllipse,
};
