// Generated by gencpp from file rail_manipulation_msgs/MoveToJointPoseGoal.msg
// DO NOT EDIT!


#ifndef RAIL_MANIPULATION_MSGS_MESSAGE_MOVETOJOINTPOSEGOAL_H
#define RAIL_MANIPULATION_MSGS_MESSAGE_MOVETOJOINTPOSEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rail_manipulation_msgs
{
template <class ContainerAllocator>
struct MoveToJointPoseGoal_
{
  typedef MoveToJointPoseGoal_<ContainerAllocator> Type;

  MoveToJointPoseGoal_()
    : joints()
    , planningTime(0.0)  {
    }
  MoveToJointPoseGoal_(const ContainerAllocator& _alloc)
    : joints(_alloc)
    , planningTime(0.0)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _joints_type;
  _joints_type joints;

   typedef float _planningTime_type;
  _planningTime_type planningTime;




  typedef boost::shared_ptr< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> const> ConstPtr;

}; // struct MoveToJointPoseGoal_

typedef ::rail_manipulation_msgs::MoveToJointPoseGoal_<std::allocator<void> > MoveToJointPoseGoal;

typedef boost::shared_ptr< ::rail_manipulation_msgs::MoveToJointPoseGoal > MoveToJointPoseGoalPtr;
typedef boost::shared_ptr< ::rail_manipulation_msgs::MoveToJointPoseGoal const> MoveToJointPoseGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "290df0c43aba8e112c66bc523496042e";
  }

  static const char* value(const ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x290df0c43aba8e11ULL;
  static const uint64_t static_value2 = 0x2c66bc523496042eULL;
};

template<class ContainerAllocator>
struct DataType< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rail_manipulation_msgs/MoveToJointPoseGoal";
  }

  static const char* value(const ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
float32[] joints      # Full set of arm joint angles as a planning goal\n\
float32 planningTime  # Maximum planning time, defaults to 5 seconds if unset\n\
";
  }

  static const char* value(const ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joints);
      stream.next(m.planningTime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveToJointPoseGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rail_manipulation_msgs::MoveToJointPoseGoal_<ContainerAllocator>& v)
  {
    s << indent << "joints[]" << std::endl;
    for (size_t i = 0; i < v.joints.size(); ++i)
    {
      s << indent << "  joints[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.joints[i]);
    }
    s << indent << "planningTime: ";
    Printer<float>::stream(s, indent + "  ", v.planningTime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RAIL_MANIPULATION_MSGS_MESSAGE_MOVETOJOINTPOSEGOAL_H
