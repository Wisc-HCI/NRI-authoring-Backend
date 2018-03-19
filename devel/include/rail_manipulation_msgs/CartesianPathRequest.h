// Generated by gencpp from file rail_manipulation_msgs/CartesianPathRequest.msg
// DO NOT EDIT!


#ifndef RAIL_MANIPULATION_MSGS_MESSAGE_CARTESIANPATHREQUEST_H
#define RAIL_MANIPULATION_MSGS_MESSAGE_CARTESIANPATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace rail_manipulation_msgs
{
template <class ContainerAllocator>
struct CartesianPathRequest_
{
  typedef CartesianPathRequest_<ContainerAllocator> Type;

  CartesianPathRequest_()
    : waypoints()
    , avoidCollisions(false)  {
    }
  CartesianPathRequest_(const ContainerAllocator& _alloc)
    : waypoints(_alloc)
    , avoidCollisions(false)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::PoseStamped_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::other >  _waypoints_type;
  _waypoints_type waypoints;

   typedef uint8_t _avoidCollisions_type;
  _avoidCollisions_type avoidCollisions;




  typedef boost::shared_ptr< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CartesianPathRequest_

typedef ::rail_manipulation_msgs::CartesianPathRequest_<std::allocator<void> > CartesianPathRequest;

typedef boost::shared_ptr< ::rail_manipulation_msgs::CartesianPathRequest > CartesianPathRequestPtr;
typedef boost::shared_ptr< ::rail_manipulation_msgs::CartesianPathRequest const> CartesianPathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rail_manipulation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rail_manipulation_msgs': ['/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/rail_manipulation_msgs/msg', '/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/rail_manipulation_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8d90ceeca812adeac9fb08d6e816f6f5";
  }

  static const char* value(const ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8d90ceeca812adeaULL;
  static const uint64_t static_value2 = 0xc9fb08d6e816f6f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rail_manipulation_msgs/CartesianPathRequest";
  }

  static const char* value(const ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseStamped[] waypoints\n\
bool avoidCollisions\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.waypoints);
      stream.next(m.avoidCollisions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CartesianPathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rail_manipulation_msgs::CartesianPathRequest_<ContainerAllocator>& v)
  {
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.waypoints[i]);
    }
    s << indent << "avoidCollisions: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.avoidCollisions);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAIL_MANIPULATION_MSGS_MESSAGE_CARTESIANPATHREQUEST_H
