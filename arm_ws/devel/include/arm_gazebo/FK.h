// Generated by gencpp from file arm_gazebo/FK.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_FK_H
#define ARM_GAZEBO_MESSAGE_FK_H

#include <ros/service_traits.h>


#include <arm_gazebo/FKRequest.h>
#include <arm_gazebo/FKResponse.h>


namespace arm_gazebo
{

struct FK
{

typedef FKRequest Request;
typedef FKResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FK
} // namespace arm_gazebo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::arm_gazebo::FK > {
  static const char* value()
  {
    return "51868960d0b668b22b07dfd57523e61b";
  }

  static const char* value(const ::arm_gazebo::FK&) { return value(); }
};

template<>
struct DataType< ::arm_gazebo::FK > {
  static const char* value()
  {
    return "arm_gazebo/FK";
  }

  static const char* value(const ::arm_gazebo::FK&) { return value(); }
};


// service_traits::MD5Sum< ::arm_gazebo::FKRequest> should match
// service_traits::MD5Sum< ::arm_gazebo::FK >
template<>
struct MD5Sum< ::arm_gazebo::FKRequest>
{
  static const char* value()
  {
    return MD5Sum< ::arm_gazebo::FK >::value();
  }
  static const char* value(const ::arm_gazebo::FKRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_gazebo::FKRequest> should match
// service_traits::DataType< ::arm_gazebo::FK >
template<>
struct DataType< ::arm_gazebo::FKRequest>
{
  static const char* value()
  {
    return DataType< ::arm_gazebo::FK >::value();
  }
  static const char* value(const ::arm_gazebo::FKRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::arm_gazebo::FKResponse> should match
// service_traits::MD5Sum< ::arm_gazebo::FK >
template<>
struct MD5Sum< ::arm_gazebo::FKResponse>
{
  static const char* value()
  {
    return MD5Sum< ::arm_gazebo::FK >::value();
  }
  static const char* value(const ::arm_gazebo::FKResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::arm_gazebo::FKResponse> should match
// service_traits::DataType< ::arm_gazebo::FK >
template<>
struct DataType< ::arm_gazebo::FKResponse>
{
  static const char* value()
  {
    return DataType< ::arm_gazebo::FK >::value();
  }
  static const char* value(const ::arm_gazebo::FKResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_FK_H