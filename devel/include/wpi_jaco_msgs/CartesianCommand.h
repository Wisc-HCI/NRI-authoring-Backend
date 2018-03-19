// Generated by gencpp from file wpi_jaco_msgs/CartesianCommand.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_CARTESIANCOMMAND_H
#define WPI_JACO_MSGS_MESSAGE_CARTESIANCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Twist.h>

namespace wpi_jaco_msgs
{
template <class ContainerAllocator>
struct CartesianCommand_
{
  typedef CartesianCommand_<ContainerAllocator> Type;

  CartesianCommand_()
    : position(false)
    , armCommand(false)
    , fingerCommand(false)
    , repeat(false)
    , arm()
    , fingers()  {
    }
  CartesianCommand_(const ContainerAllocator& _alloc)
    : position(false)
    , armCommand(false)
    , fingerCommand(false)
    , repeat(false)
    , arm(_alloc)
    , fingers(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _position_type;
  _position_type position;

   typedef uint8_t _armCommand_type;
  _armCommand_type armCommand;

   typedef uint8_t _fingerCommand_type;
  _fingerCommand_type fingerCommand;

   typedef uint8_t _repeat_type;
  _repeat_type repeat;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _arm_type;
  _arm_type arm;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _fingers_type;
  _fingers_type fingers;




  typedef boost::shared_ptr< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> const> ConstPtr;

}; // struct CartesianCommand_

typedef ::wpi_jaco_msgs::CartesianCommand_<std::allocator<void> > CartesianCommand;

typedef boost::shared_ptr< ::wpi_jaco_msgs::CartesianCommand > CartesianCommandPtr;
typedef boost::shared_ptr< ::wpi_jaco_msgs::CartesianCommand const> CartesianCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace wpi_jaco_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'wpi_jaco_msgs': ['/home/hcilab/Documents/jieru/NRI-authoring-Backend/src/wpi_jaco/wpi_jaco_msgs/msg', '/home/hcilab/Documents/jieru/NRI-authoring-Backend/devel/share/wpi_jaco_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "be41abcf10fd0ff2a0ead4293f8dfdf1";
  }

  static const char* value(const ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbe41abcf10fd0ff2ULL;
  static const uint64_t static_value2 = 0xa0ead4293f8dfdf1ULL;
};

template<class ContainerAllocator>
struct DataType< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wpi_jaco_msgs/CartesianCommand";
  }

  static const char* value(const ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool position             # true for a position command, false for a velocity command\n\
bool armCommand           # true if this command includes arm joint inputs\n\
bool fingerCommand        # true if this command includes finger inputs\n\
bool repeat               # true if the command should be repeatedly sent over a short interval\n\
geometry_msgs/Twist arm   # position (m, rad) or velocity (m/s, rad/s) arm command\n\
float32[] fingers         # position (rad) or velocity (rad/s) finger command\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.armCommand);
      stream.next(m.fingerCommand);
      stream.next(m.repeat);
      stream.next(m.arm);
      stream.next(m.fingers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CartesianCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wpi_jaco_msgs::CartesianCommand_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.position);
    s << indent << "armCommand: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.armCommand);
    s << indent << "fingerCommand: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fingerCommand);
    s << indent << "repeat: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.repeat);
    s << indent << "arm: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.arm);
    s << indent << "fingers[]" << std::endl;
    for (size_t i = 0; i < v.fingers.size(); ++i)
    {
      s << indent << "  fingers[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.fingers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_CARTESIANCOMMAND_H
