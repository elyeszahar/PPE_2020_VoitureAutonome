
"use strict";

let VehicleLength = require('./VehicleLength.js');
let PathPoint = require('./PathPoint.js');
let PathDeltaTime = require('./PathDeltaTime.js');
let VehicleWidth = require('./VehicleWidth.js');
let StationType = require('./StationType.js');
let Curvature = require('./Curvature.js');
let InformationQuality = require('./InformationQuality.js');
let SituationContainer = require('./SituationContainer.js');
let LocationContainer = require('./LocationContainer.js');
let DeltaReferencePosition = require('./DeltaReferencePosition.js');
let Speed = require('./Speed.js');
let Heading = require('./Heading.js');
let AccelerationControl = require('./AccelerationControl.js');
let BasicVehicleContainerLowFrequency = require('./BasicVehicleContainerLowFrequency.js');
let CAM = require('./CAM.js');
let LongitudinalAcceleration = require('./LongitudinalAcceleration.js');
let ExteriorLights = require('./ExteriorLights.js');
let ActionID = require('./ActionID.js');
let RelevanceDistance = require('./RelevanceDistance.js');
let EventPoint = require('./EventPoint.js');
let BasicVehicleContainerHighFrequency = require('./BasicVehicleContainerHighFrequency.js');
let YawRate = require('./YawRate.js');
let ManagementContainer = require('./ManagementContainer.js');
let SPAT = require('./SPAT.js');
let CurvatureCalculationMode = require('./CurvatureCalculationMode.js');
let RelevanceTrafficDirection = require('./RelevanceTrafficDirection.js');
let DriveDirection = require('./DriveDirection.js');
let DENM = require('./DENM.js');
let ReferencePosition = require('./ReferencePosition.js');
let Altitude = require('./Altitude.js');
let CauseCode = require('./CauseCode.js');
let VehicleRole = require('./VehicleRole.js');
let ItsPduHeader = require('./ItsPduHeader.js');
let PositionConfidenceEllipse = require('./PositionConfidenceEllipse.js');
let PathHistory = require('./PathHistory.js');

module.exports = {
  VehicleLength: VehicleLength,
  PathPoint: PathPoint,
  PathDeltaTime: PathDeltaTime,
  VehicleWidth: VehicleWidth,
  StationType: StationType,
  Curvature: Curvature,
  InformationQuality: InformationQuality,
  SituationContainer: SituationContainer,
  LocationContainer: LocationContainer,
  DeltaReferencePosition: DeltaReferencePosition,
  Speed: Speed,
  Heading: Heading,
  AccelerationControl: AccelerationControl,
  BasicVehicleContainerLowFrequency: BasicVehicleContainerLowFrequency,
  CAM: CAM,
  LongitudinalAcceleration: LongitudinalAcceleration,
  ExteriorLights: ExteriorLights,
  ActionID: ActionID,
  RelevanceDistance: RelevanceDistance,
  EventPoint: EventPoint,
  BasicVehicleContainerHighFrequency: BasicVehicleContainerHighFrequency,
  YawRate: YawRate,
  ManagementContainer: ManagementContainer,
  SPAT: SPAT,
  CurvatureCalculationMode: CurvatureCalculationMode,
  RelevanceTrafficDirection: RelevanceTrafficDirection,
  DriveDirection: DriveDirection,
  DENM: DENM,
  ReferencePosition: ReferencePosition,
  Altitude: Altitude,
  CauseCode: CauseCode,
  VehicleRole: VehicleRole,
  ItsPduHeader: ItsPduHeader,
  PositionConfidenceEllipse: PositionConfidenceEllipse,
  PathHistory: PathHistory,
};
