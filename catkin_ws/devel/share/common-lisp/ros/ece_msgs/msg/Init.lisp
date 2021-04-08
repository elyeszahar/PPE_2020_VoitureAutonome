; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Init.msg.html

(cl:defclass <Init> (roslisp-msg-protocol:ros-message)
  ((destination
    :reader destination
    :initarg :destination
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (actual_position
    :reader actual_position
    :initarg :actual_position
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition)))
)

(cl:defclass Init (<Init>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Init>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Init)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Init> is deprecated: use ece_msgs-msg:Init instead.")))

(cl:ensure-generic-function 'destination-val :lambda-list '(m))
(cl:defmethod destination-val ((m <Init>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:destination-val is deprecated.  Use ece_msgs-msg:destination instead.")
  (destination m))

(cl:ensure-generic-function 'actual_position-val :lambda-list '(m))
(cl:defmethod actual_position-val ((m <Init>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:actual_position-val is deprecated.  Use ece_msgs-msg:actual_position instead.")
  (actual_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Init>) ostream)
  "Serializes a message object of type '<Init>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'destination) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Init>) istream)
  "Deserializes a message object of type '<Init>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'destination) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Init>)))
  "Returns string type for a message object of type '<Init>"
  "ece_msgs/Init")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init)))
  "Returns string type for a message object of type 'Init"
  "ece_msgs/Init")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Init>)))
  "Returns md5sum for a message object of type '<Init>"
  "98e72c61b91b7db811fccea348b6d240")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Init)))
  "Returns md5sum for a message object of type 'Init"
  "98e72c61b91b7db811fccea348b6d240")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Init>)))
  "Returns full string definition for message of type '<Init>"
  (cl:format cl:nil "# Destination : 8 octets~%ReferencePosition destination~%~%# Actual position : 8 octets~%ReferencePosition actual_position~%~%~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Init)))
  "Returns full string definition for message of type 'Init"
  (cl:format cl:nil "# Destination : 8 octets~%ReferencePosition destination~%~%# Actual position : 8 octets~%ReferencePosition actual_position~%~%~%~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Init>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'destination))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Init>))
  "Converts a ROS message object to a list"
  (cl:list 'Init
    (cl:cons ':destination (destination msg))
    (cl:cons ':actual_position (actual_position msg))
))
