;; Auto-generated. Do not edit!


(when (boundp 'ece_msgs::Insertion)
  (if (not (find-package "ECE_MSGS"))
    (make-package "ECE_MSGS"))
  (shadow 'Insertion (find-package "ECE_MSGS")))
(unless (find-package "ECE_MSGS::INSERTION")
  (make-package "ECE_MSGS::INSERTION"))

(in-package "ROS")
;;//! \htmlinclude Insertion.msg.html


(defclass ece_msgs::Insertion
  :super ros::object
  :slots (_point_insertion _confirmation_insertion _platoon ))

(defmethod ece_msgs::Insertion
  (:init
   (&key
    ((:point_insertion __point_insertion) (instance ece_msgs::ReferencePosition :init))
    ((:confirmation_insertion __confirmation_insertion) nil)
    ((:platoon __platoon) (instance ece_msgs::Platoon :init))
    )
   (send-super :init)
   (setq _point_insertion __point_insertion)
   (setq _confirmation_insertion __confirmation_insertion)
   (setq _platoon __platoon)
   self)
  (:point_insertion
   (&rest __point_insertion)
   (if (keywordp (car __point_insertion))
       (send* _point_insertion __point_insertion)
     (progn
       (if __point_insertion (setq _point_insertion (car __point_insertion)))
       _point_insertion)))
  (:confirmation_insertion
   (&optional __confirmation_insertion)
   (if __confirmation_insertion (setq _confirmation_insertion __confirmation_insertion)) _confirmation_insertion)
  (:platoon
   (&rest __platoon)
   (if (keywordp (car __platoon))
       (send* _platoon __platoon)
     (progn
       (if __platoon (setq _platoon (car __platoon)))
       _platoon)))
  (:serialization-length
   ()
   (+
    ;; ece_msgs/ReferencePosition _point_insertion
    (send _point_insertion :serialization-length)
    ;; bool _confirmation_insertion
    1
    ;; ece_msgs/Platoon _platoon
    (send _platoon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ece_msgs/ReferencePosition _point_insertion
       (send _point_insertion :serialize s)
     ;; bool _confirmation_insertion
       (if _confirmation_insertion (write-byte -1 s) (write-byte 0 s))
     ;; ece_msgs/Platoon _platoon
       (send _platoon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ece_msgs/ReferencePosition _point_insertion
     (send _point_insertion :deserialize buf ptr-) (incf ptr- (send _point_insertion :serialization-length))
   ;; bool _confirmation_insertion
     (setq _confirmation_insertion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ece_msgs/Platoon _platoon
     (send _platoon :deserialize buf ptr-) (incf ptr- (send _platoon :serialization-length))
   ;;
   self)
  )

(setf (get ece_msgs::Insertion :md5sum-) "b9ed5fbe8d2d5020b6912cf981b9a24b")
(setf (get ece_msgs::Insertion :datatype-) "ece_msgs/Insertion")
(setf (get ece_msgs::Insertion :definition-)
      "# Point d'insertion : 8 octet 
ReferencePosition point_insertion

# Confirmation insertion : 1 octet
bool confirmation_insertion

# Platoon
Platoon platoon
================================================================================
MSG: ece_msgs/ReferencePosition
int64 latitude # 0.1 micro degree
int64 longitude # 0.1 micro degree
int32 altitude

int64 LATITUDE_UNAVAILABLE = 900000001
int64 LONGITUDE_UNAVAILABLE = 1800000001
int32 ALTITUDE_UNAVAILABLE = 800001

================================================================================
MSG: ece_msgs/Platoon
# ID platoon : 3 bits
uint8 id_platoon

# ID autres véhicules platoon
IDs[] ids 

# Nombre de véhicules : 3 bits
uint8 nombre_vehicules

# Destination : 8 octets
ReferencePosition destination

# Vitesse et interdistance
VitesseInterdistance vitesse_interdistance
================================================================================
MSG: ece_msgs/IDs
uint8 ID
uint8 position
================================================================================
MSG: ece_msgs/VitesseInterdistance
# Vitesse : 6 bits
Speed speed

# Interdistance : 2 bits
uint8 interdistance
================================================================================
MSG: ece_msgs/Speed
uint16 value # 0.01 m/s
uint8 confidence # 0.01 m/s

uint16 VALUE_STANDSTILL = 0
uint16 VALUE_ONE_CENTIMETER_PER_SECOND = 1
uint16 VALUE_UNAVAILABLE = 16383

uint8 CONFIDENCE_OUT_OF_RANGE = 126
uint8 CONFIDENCE_UNAVAILABLE = 127

")



(provide :ece_msgs/Insertion "b9ed5fbe8d2d5020b6912cf981b9a24b")


