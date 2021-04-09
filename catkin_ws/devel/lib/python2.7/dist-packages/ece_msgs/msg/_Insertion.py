# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ece_msgs/Insertion.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ece_msgs.msg

class Insertion(genpy.Message):
  _md5sum = "b9ed5fbe8d2d5020b6912cf981b9a24b"
  _type = "ece_msgs/Insertion"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Point d'insertion : 8 octet 
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
"""
  __slots__ = ['point_insertion','confirmation_insertion','platoon']
  _slot_types = ['ece_msgs/ReferencePosition','bool','ece_msgs/Platoon']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       point_insertion,confirmation_insertion,platoon

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Insertion, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.point_insertion is None:
        self.point_insertion = ece_msgs.msg.ReferencePosition()
      if self.confirmation_insertion is None:
        self.confirmation_insertion = False
      if self.platoon is None:
        self.platoon = ece_msgs.msg.Platoon()
    else:
      self.point_insertion = ece_msgs.msg.ReferencePosition()
      self.confirmation_insertion = False
      self.platoon = ece_msgs.msg.Platoon()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2qi2B().pack(_x.point_insertion.latitude, _x.point_insertion.longitude, _x.point_insertion.altitude, _x.confirmation_insertion, _x.platoon.id_platoon))
      length = len(self.platoon.ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.platoon.ids:
        _x = val1
        buff.write(_get_struct_2B().pack(_x.ID, _x.position))
      _x = self
      buff.write(_get_struct_B2qiH2B().pack(_x.platoon.nombre_vehicules, _x.platoon.destination.latitude, _x.platoon.destination.longitude, _x.platoon.destination.altitude, _x.platoon.vitesse_interdistance.speed.value, _x.platoon.vitesse_interdistance.speed.confidence, _x.platoon.vitesse_interdistance.interdistance))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.point_insertion is None:
        self.point_insertion = ece_msgs.msg.ReferencePosition()
      if self.platoon is None:
        self.platoon = ece_msgs.msg.Platoon()
      end = 0
      _x = self
      start = end
      end += 22
      (_x.point_insertion.latitude, _x.point_insertion.longitude, _x.point_insertion.altitude, _x.confirmation_insertion, _x.platoon.id_platoon,) = _get_struct_2qi2B().unpack(str[start:end])
      self.confirmation_insertion = bool(self.confirmation_insertion)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.platoon.ids = []
      for i in range(0, length):
        val1 = ece_msgs.msg.IDs()
        _x = val1
        start = end
        end += 2
        (_x.ID, _x.position,) = _get_struct_2B().unpack(str[start:end])
        self.platoon.ids.append(val1)
      _x = self
      start = end
      end += 25
      (_x.platoon.nombre_vehicules, _x.platoon.destination.latitude, _x.platoon.destination.longitude, _x.platoon.destination.altitude, _x.platoon.vitesse_interdistance.speed.value, _x.platoon.vitesse_interdistance.speed.confidence, _x.platoon.vitesse_interdistance.interdistance,) = _get_struct_B2qiH2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2qi2B().pack(_x.point_insertion.latitude, _x.point_insertion.longitude, _x.point_insertion.altitude, _x.confirmation_insertion, _x.platoon.id_platoon))
      length = len(self.platoon.ids)
      buff.write(_struct_I.pack(length))
      for val1 in self.platoon.ids:
        _x = val1
        buff.write(_get_struct_2B().pack(_x.ID, _x.position))
      _x = self
      buff.write(_get_struct_B2qiH2B().pack(_x.platoon.nombre_vehicules, _x.platoon.destination.latitude, _x.platoon.destination.longitude, _x.platoon.destination.altitude, _x.platoon.vitesse_interdistance.speed.value, _x.platoon.vitesse_interdistance.speed.confidence, _x.platoon.vitesse_interdistance.interdistance))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.point_insertion is None:
        self.point_insertion = ece_msgs.msg.ReferencePosition()
      if self.platoon is None:
        self.platoon = ece_msgs.msg.Platoon()
      end = 0
      _x = self
      start = end
      end += 22
      (_x.point_insertion.latitude, _x.point_insertion.longitude, _x.point_insertion.altitude, _x.confirmation_insertion, _x.platoon.id_platoon,) = _get_struct_2qi2B().unpack(str[start:end])
      self.confirmation_insertion = bool(self.confirmation_insertion)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.platoon.ids = []
      for i in range(0, length):
        val1 = ece_msgs.msg.IDs()
        _x = val1
        start = end
        end += 2
        (_x.ID, _x.position,) = _get_struct_2B().unpack(str[start:end])
        self.platoon.ids.append(val1)
      _x = self
      start = end
      end += 25
      (_x.platoon.nombre_vehicules, _x.platoon.destination.latitude, _x.platoon.destination.longitude, _x.platoon.destination.altitude, _x.platoon.vitesse_interdistance.speed.value, _x.platoon.vitesse_interdistance.speed.confidence, _x.platoon.vitesse_interdistance.interdistance,) = _get_struct_B2qiH2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_2qi2B = None
def _get_struct_2qi2B():
    global _struct_2qi2B
    if _struct_2qi2B is None:
        _struct_2qi2B = struct.Struct("<2qi2B")
    return _struct_2qi2B
_struct_B2qiH2B = None
def _get_struct_B2qiH2B():
    global _struct_B2qiH2B
    if _struct_B2qiH2B is None:
        _struct_B2qiH2B = struct.Struct("<B2qiH2B")
    return _struct_B2qiH2B