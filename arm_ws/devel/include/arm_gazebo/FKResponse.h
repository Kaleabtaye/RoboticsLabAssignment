// Generated by gencpp from file arm_gazebo/FKResponse.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_FKRESPONSE_H
#define ARM_GAZEBO_MESSAGE_FKRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_gazebo
{
template <class ContainerAllocator>
struct FKResponse_
{
  typedef FKResponse_<ContainerAllocator> Type;

  FKResponse_()
    : actuator_pose()  {
    }
  FKResponse_(const ContainerAllocator& _alloc)
    : actuator_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _actuator_pose_type;
  _actuator_pose_type actuator_pose;





  typedef boost::shared_ptr< ::arm_gazebo::FKResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_gazebo::FKResponse_<ContainerAllocator> const> ConstPtr;

}; // struct FKResponse_

typedef ::arm_gazebo::FKResponse_<std::allocator<void> > FKResponse;

typedef boost::shared_ptr< ::arm_gazebo::FKResponse > FKResponsePtr;
typedef boost::shared_ptr< ::arm_gazebo::FKResponse const> FKResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_gazebo::FKResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_gazebo::FKResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_gazebo::FKResponse_<ContainerAllocator1> & lhs, const ::arm_gazebo::FKResponse_<ContainerAllocator2> & rhs)
{
  return lhs.actuator_pose == rhs.actuator_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_gazebo::FKResponse_<ContainerAllocator1> & lhs, const ::arm_gazebo::FKResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_gazebo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::FKResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::FKResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::FKResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::FKResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::FKResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::FKResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_gazebo::FKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4222ac6c84f861c87f0dc07027fcf01f";
  }

  static const char* value(const ::arm_gazebo::FKResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4222ac6c84f861c8ULL;
  static const uint64_t static_value2 = 0x7f0dc07027fcf01fULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_gazebo::FKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_gazebo/FKResponse";
  }

  static const char* value(const ::arm_gazebo::FKResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_gazebo::FKResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] actuator_pose\n"
;
  }

  static const char* value(const ::arm_gazebo::FKResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_gazebo::FKResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.actuator_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FKResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_gazebo::FKResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_gazebo::FKResponse_<ContainerAllocator>& v)
  {
    s << indent << "actuator_pose[]" << std::endl;
    for (size_t i = 0; i < v.actuator_pose.size(); ++i)
    {
      s << indent << "  actuator_pose[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.actuator_pose[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_FKRESPONSE_H
