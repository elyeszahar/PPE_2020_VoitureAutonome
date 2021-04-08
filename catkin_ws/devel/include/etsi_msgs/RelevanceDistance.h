// Generated by gencpp from file etsi_msgs/RelevanceDistance.msg
// DO NOT EDIT!


#ifndef ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_H
#define ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <etsi_msgs/plugin/RelevanceDistance.h>

namespace etsi_msgs
{
template <class ContainerAllocator>
struct RelevanceDistance_
{
  typedef RelevanceDistance_<ContainerAllocator> Type;

#ifdef ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_CONSTRUCTOR
  ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_CONSTRUCTOR
#else
  RelevanceDistance_()
    : value(0)  {
    }
  RelevanceDistance_(const ContainerAllocator& _alloc)
    : value(0)  {
  (void)_alloc;
    }

#endif


   typedef uint8_t _value_type;
  _value_type value;



  enum {
    LESS_THAN_50M = 0u,
    LESS_THAN_100M = 1u,
    LESS_THAN_200M = 2u,
    LESS_THAN_500M = 3u,
    LESS_THAN_1000M = 4u,
    LESS_THAN_5KM = 5u,
    LESS_THAN_10KM = 6u,
    OVER_10KM = 7u,
    UNAVAILABLE = 255u,
  };


  typedef boost::shared_ptr< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> const> ConstPtr;

#ifdef ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_CLASS_BODY
  ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_CLASS_BODY
#endif
}; // struct RelevanceDistance_

typedef ::etsi_msgs::RelevanceDistance_<std::allocator<void> > RelevanceDistance;

typedef boost::shared_ptr< ::etsi_msgs::RelevanceDistance > RelevanceDistancePtr;
typedef boost::shared_ptr< ::etsi_msgs::RelevanceDistance const> RelevanceDistanceConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::etsi_msgs::RelevanceDistance_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace etsi_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'etsi_msgs': ['/home/ppe2021/catkin_ws/src/etsi_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e56ef7aa4489b7a0e715afdd14b85bd";
  }

  static const char* value(const ::etsi_msgs::RelevanceDistance_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e56ef7aa4489b7aULL;
  static const uint64_t static_value2 = 0x0e715afdd14b85bdULL;
};

template<class ContainerAllocator>
struct DataType< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "etsi_msgs/RelevanceDistance";
  }

  static const char* value(const ::etsi_msgs::RelevanceDistance_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 value\n\
\n\
uint8 LESS_THAN_50M = 0\n\
uint8 LESS_THAN_100M = 1\n\
uint8 LESS_THAN_200M = 2\n\
uint8 LESS_THAN_500M = 3\n\
uint8 LESS_THAN_1000M = 4\n\
uint8 LESS_THAN_5KM = 5\n\
uint8 LESS_THAN_10KM = 6\n\
uint8 OVER_10KM = 7\n\
uint8 UNAVAILABLE = 255\n\
";
  }

  static const char* value(const ::etsi_msgs::RelevanceDistance_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

#ifdef ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_SERIALIZER
  ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_SERIALIZER
#else
  template<class ContainerAllocator> struct Serializer< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RelevanceDistance_
#endif

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

#ifdef ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_PRINTER
  ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_PLUGIN_PRINTER
#else
template<class ContainerAllocator>
struct Printer< ::etsi_msgs::RelevanceDistance_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::etsi_msgs::RelevanceDistance_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.value);
  }
};
#endif

} // namespace message_operations
} // namespace ros

#endif // ETSI_MSGS_MESSAGE_RELEVANCEDISTANCE_H
