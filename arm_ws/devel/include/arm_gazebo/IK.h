// Generated by gencpp from file arm_gazebo/IK.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_IK_H
#define ARM_GAZEBO_MESSAGE_IK_H

#include <ros/service_traits.h>


#include <arm_gazebo/IKRequest.h>
#include <arm_gazebo/IKResponse.h>


namespace arm_gazebo
{

struct IK
{

typedef IKRequest Request;
typedef IKResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IK
} // namespace arm_gazebo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::arm_gazebo::IK > {
  static const char* value()
  {
    return "8e5bcb00278a6fecb7986c350cbe23a5";
  }

  static const char* value(const ::arm_gazebo::IK&) { return value(); }
};

template<>
struct DataType< ::arm_gazebo::IK > {
  static const char* value()
  {
    return "arm_gazebo/IK";
  }

  static const char* value(const ::arm_gazebo::IK&) { return value(); }
};


// service_traits::MD5Sum< ::arm_gazebo::IKRequest> should match
// service_traits::MD5Sum< ::arm_gazebo::IK >
template<>
struct MD5Sum< ::arm_gazebo::IKRequest>
{
  static const char* value()
  {
    return MD5Sum< ::arm_gazebo::IK >::value();
  }
  static const char* value(const ::arm_gazebo::IKRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_gazebo::IKRequest> should match
// service_traits::DataType< ::arm_gazebo::IK >
template<>
struct DataType< ::arm_gazebo::IKRequest>
{
  static const char* value()
  {
    return DataType< ::arm_gazebo::IK >::value();
  }
  static const char* value(const ::arm_gazebo::IKRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::arm_gazebo::IKResponse> should match
// service_traits::MD5Sum< ::arm_gazebo::IK >
template<>
struct MD5Sum< ::arm_gazebo::IKResponse>
{
  static const char* value()
  {
    return MD5Sum< ::arm_gazebo::IK >::value();
  }
  static const char* value(const ::arm_gazebo::IKResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_gazebo::IKResponse> should match
// service_traits::DataType< ::arm_gazebo::IK >
template<>
struct DataType< ::arm_gazebo::IKResponse>
{
  static const char* value()
  {
    return DataType< ::arm_gazebo::IK >::value();
  }
  static const char* value(const ::arm_gazebo::IKResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_IK_H
