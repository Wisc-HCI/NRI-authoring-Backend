// Generated by gencpp from file wpi_jaco_msgs/GetCartesianPosition.msg
// DO NOT EDIT!


#ifndef WPI_JACO_MSGS_MESSAGE_GETCARTESIANPOSITION_H
#define WPI_JACO_MSGS_MESSAGE_GETCARTESIANPOSITION_H

#include <ros/service_traits.h>


#include <wpi_jaco_msgs/GetCartesianPositionRequest.h>
#include <wpi_jaco_msgs/GetCartesianPositionResponse.h>


namespace wpi_jaco_msgs
{

struct GetCartesianPosition
{

typedef GetCartesianPositionRequest Request;
typedef GetCartesianPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetCartesianPosition
} // namespace wpi_jaco_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::wpi_jaco_msgs::GetCartesianPosition > {
  static const char* value()
  {
    return "90eff4f5bd7896007c2525f114434660";
  }

  static const char* value(const ::wpi_jaco_msgs::GetCartesianPosition&) { return value(); }
};

template<>
struct DataType< ::wpi_jaco_msgs::GetCartesianPosition > {
  static const char* value()
  {
    return "wpi_jaco_msgs/GetCartesianPosition";
  }

  static const char* value(const ::wpi_jaco_msgs::GetCartesianPosition&) { return value(); }
};


// service_traits::MD5Sum< ::wpi_jaco_msgs::GetCartesianPositionRequest> should match 
// service_traits::MD5Sum< ::wpi_jaco_msgs::GetCartesianPosition > 
template<>
struct MD5Sum< ::wpi_jaco_msgs::GetCartesianPositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::wpi_jaco_msgs::GetCartesianPosition >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::GetCartesianPositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::wpi_jaco_msgs::GetCartesianPositionRequest> should match 
// service_traits::DataType< ::wpi_jaco_msgs::GetCartesianPosition > 
template<>
struct DataType< ::wpi_jaco_msgs::GetCartesianPositionRequest>
{
  static const char* value()
  {
    return DataType< ::wpi_jaco_msgs::GetCartesianPosition >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::GetCartesianPositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::wpi_jaco_msgs::GetCartesianPositionResponse> should match 
// service_traits::MD5Sum< ::wpi_jaco_msgs::GetCartesianPosition > 
template<>
struct MD5Sum< ::wpi_jaco_msgs::GetCartesianPositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::wpi_jaco_msgs::GetCartesianPosition >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::GetCartesianPositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::wpi_jaco_msgs::GetCartesianPositionResponse> should match 
// service_traits::DataType< ::wpi_jaco_msgs::GetCartesianPosition > 
template<>
struct DataType< ::wpi_jaco_msgs::GetCartesianPositionResponse>
{
  static const char* value()
  {
    return DataType< ::wpi_jaco_msgs::GetCartesianPosition >::value();
  }
  static const char* value(const ::wpi_jaco_msgs::GetCartesianPositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WPI_JACO_MSGS_MESSAGE_GETCARTESIANPOSITION_H