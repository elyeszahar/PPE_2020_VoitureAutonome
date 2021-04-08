; Auto-generated. Do not edit!


(cl:in-package ece_msgs-msg)


;//! \htmlinclude Insertion.msg.html

(cl:defclass <Insertion> (roslisp-msg-protocol:ros-message)
  ((point_insertion
    :reader point_insertion
    :initarg :point_insertion
    :type ece_msgs-msg:ReferencePosition
    :initform (cl:make-instance 'ece_msgs-msg:ReferencePosition))
   (confirmation_insertion
    :reader confirmation_insertion
    :initarg :confirmation_insertion
    :type cl:boolean
    :initform cl:nil)
   (platoon
    :reader platoon
    :initarg :platoon
    :type ece_msgs-msg:Platoon
    :initform (cl:make-instance 'ece_msgs-msg:Platoon)))
)

(cl:defclass Insertion (<Insertion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Insertion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Insertion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ece_msgs-msg:<Insertion> is deprecated: use ece_msgs-msg:Insertion instead.")))

(cl:ensure-generic-function 'point_insertion-val :lambda-list '(m))
(cl:defmethod point_insertion-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:point_insertion-val is deprecated.  Use ece_msgs-msg:point_insertion instead.")
  (point_insertion m))

(cl:ensure-generic-function 'confirmation_insertion-val :lambda-list '(m))
(cl:defmethod confirmation_insertion-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:confirmation_insertion-val is deprecated.  Use ece_msgs-msg:confirmation_insertion instead.")
  (confirmation_insertion m))

(cl:ensure-generic-function 'platoon-val :lambda-list '(m))
(cl:defmethod platoon-val ((m <Insertion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ece_msgs-msg:platoon-val is deprecated.  Use ece_msgs-msg:platoon instead.")
  (platoon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Insertion>) ostream)
  "Serializes a message object of type '<Insertion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_insertion) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'confirmation_insertion) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'platoon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Insertion>) istream)
  "Deserializes a message object of type '<Insertion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_insertion) istream)
    (cl:setf (cl:slot-value msg 'confirmation_insertion) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'platoon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Insertion>)))
  "Returns string type for a message object of type '<Insertion>"
  "ece_msgs/Insertion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Insertion)))
  "Returns string type for a message object of type 'Insertion"
  "ece_msgs/Insertion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Insertion>)))
  "Returns md5sum for a message object of type '<Insertion>"
  "b9ed5fbe8d2d5020b6912cf981b9a24b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Insertion)))
  "Returns md5sum for a message object of type 'Insertion"
  "b9ed5fbe8d2d5020b6912cf981b9a24b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Insertion>)))
  "Returns full string definition for message of type '<Insertion>"
  (cl:format cl:nil "# Point d'insertion : 8 octet ~%ReferencePosition point_insertion~%~%# Confirmation insertion : 1 octet~%bool confirmation_insertion~%~%# Platoon~%Platoon platoon~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/Platoon~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Insertion)))
  "Returns full string definition for message of type 'Insertion"
  (cl:format cl:nil "# Point d'insertion : 8 octet ~%ReferencePosition point_insertion~%~%# Confirmation insertion : 1 octet~%bool confirmation_insertion~%~%# Platoon~%Platoon platoon~%================================================================================~%MSG: ece_msgs/ReferencePosition~%int64 latitude # 0.1 micro degree~%int64 longitude # 0.1 micro degree~%int32 altitude~%~%int64 LATITUDE_UNAVAILABLE = 900000001~%int64 LONGITUDE_UNAVAILABLE = 1800000001~%int32 ALTITUDE_UNAVAILABLE = 800001~%~%================================================================================~%MSG: ece_msgs/Platoon~%# ID platoon : 3 bits~%uint8 id_platoon~%~%# ID autres véhicules platoon~%IDs[] ids ~%~%# Nombre de véhicules : 3 bits~%uint8 nombre_vehicules~%~%# Destination : 8 octets~%ReferencePosition destination~%~%# Vitesse et interdistance~%VitesseInterdistance vitesse_interdistance~%================================================================================~%MSG: ece_msgs/IDs~%uint8 ID~%uint8 position~%================================================================================~%MSG: ece_msgs/VitesseInterdistance~%# Vitesse : 6 bits~%Speed speed~%~%# Interdistance : 2 bits~%uint8 interdistance~%================================================================================~%MSG: ece_msgs/Speed~%uint16 value # 0.01 m/s~%uint8 confidence # 0.01 m/s~%~%uint16 VALUE_STANDSTILL = 0~%uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1~%uint16 VALUE_UNAVAILABLE = 16383~%~%uint8 CONFIDENCE_OUT_OF_RANGE = 126~%uint8 CONFIDENCE_UNAVAILABLE = 127~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Insertion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_insertion))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'platoon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Insertion>))
  "Converts a ROS message object to a list"
  (cl:list 'Insertion
    (cl:cons ':point_insertion (point_insertion msg))
    (cl:cons ':confirmation_insertion (confirmation_insertion msg))
    (cl:cons ':platoon (platoon msg))
))
