// Generated by gencpp from file rail_manipulation_msgs/SuggestGraspsResponse.msg
// DO NOT EDIT!


#ifndef RAIL_MANIPULATION_MSGS_MESSAGE_SUGGESTGRASPSRESPONSE_H
#define RAIL_MANIPULATION_MSGS_MESSAGE_SUGGESTGRASPSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseArray.h>

namespace rail_manipulation_msgs
{
template <class ContainerAllocator>
struct SuggestGraspsResponse_
{
  typedef SuggestGraspsResponse_<ContainerAllocator> Type;

  SuggestGraspsResponse_()
    : grasp_list()  {
    }
  SuggestGraspsResponse_(const ContainerAllocator& _alloc)
    : grasp_list(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseArray_<ContainerAllocator>  _grasp_list_type;
  _grasp_list_type grasp_list;




  typedef boost::shared_ptr< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SuggestGraspsResponse_

typedef ::rail_manipulation_msgs::SuggestGraspsResponse_<std::allocator<void> > SuggestGraspsResponse;

typedef boost::shared_ptr< ::rail_manipulation_msgs::SuggestGraspsResponse > SuggestGraspsResponsePtr;
typedef boost::shared_ptr< ::rail_manipulation_msgs::SuggestGraspsResponse const> SuggestGraspsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rail_manipulation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rail_manipulation_msgs': ['/home/jerry/Desktop/therbligs_ws/src/rail_manipulation_msgs/msg', '/home/jerry/Desktop/therbligs_ws/devel/share/rail_manipulation_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c2ebd2e566677f8b421547f8e5266ee";
  }

  static const char* value(const ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c2ebd2e566677f8ULL;
  static const uint64_t static_value2 = 0xb421547f8e5266eeULL;
};

template<class ContainerAllocator>
struct DataType< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rail_manipulation_msgs/SuggestGraspsResponse";
  }

  static const char* value(const ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PoseArray grasp_list\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseArray\n\
# An array of poses with a header for global reference.\n\
\n\
Header header\n\
\n\
Pose[] poses\n\
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

  static const char* value(const ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.grasp_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SuggestGraspsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rail_manipulation_msgs::SuggestGraspsResponse_<ContainerAllocator>& v)
  {
    s << indent << "grasp_list: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.grasp_list);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAIL_MANIPULATION_MSGS_MESSAGE_SUGGESTGRASPSRESPONSE_H
