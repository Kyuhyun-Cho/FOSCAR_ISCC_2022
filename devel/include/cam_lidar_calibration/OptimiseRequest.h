// Generated by gencpp from file cam_lidar_calibration/OptimiseRequest.msg
// DO NOT EDIT!


#ifndef CAM_LIDAR_CALIBRATION_MESSAGE_OPTIMISEREQUEST_H
#define CAM_LIDAR_CALIBRATION_MESSAGE_OPTIMISEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cam_lidar_calibration
{
template <class ContainerAllocator>
struct OptimiseRequest_
{
  typedef OptimiseRequest_<ContainerAllocator> Type;

  OptimiseRequest_()
    : operation(0)  {
    }
  OptimiseRequest_(const ContainerAllocator& _alloc)
    : operation(0)  {
  (void)_alloc;
    }



   typedef int8_t _operation_type;
  _operation_type operation;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(READY)
  #undef READY
#endif
#if defined(_WIN32) && defined(CAPTURE)
  #undef CAPTURE
#endif
#if defined(_WIN32) && defined(DISCARD)
  #undef DISCARD
#endif

  enum {
    READY = 0,
    CAPTURE = 1,
    DISCARD = 2,
  };


  typedef boost::shared_ptr< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OptimiseRequest_

typedef ::cam_lidar_calibration::OptimiseRequest_<std::allocator<void> > OptimiseRequest;

typedef boost::shared_ptr< ::cam_lidar_calibration::OptimiseRequest > OptimiseRequestPtr;
typedef boost::shared_ptr< ::cam_lidar_calibration::OptimiseRequest const> OptimiseRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator1> & lhs, const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.operation == rhs.operation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator1> & lhs, const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cam_lidar_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2d3087f8d04e889cffaae0e602f2d205";
  }

  static const char* value(const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2d3087f8d04e889cULL;
  static const uint64_t static_value2 = 0xffaae0e602f2d205ULL;
};

template<class ContainerAllocator>
struct DataType< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cam_lidar_calibration/OptimiseRequest";
  }

  static const char* value(const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 operation\n"
"\n"
"int8 READY=0\n"
"int8 CAPTURE=1\n"
"int8 DISCARD=2\n"
;
  }

  static const char* value(const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.operation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OptimiseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cam_lidar_calibration::OptimiseRequest_<ContainerAllocator>& v)
  {
    s << indent << "operation: ";
    Printer<int8_t>::stream(s, indent + "  ", v.operation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAM_LIDAR_CALIBRATION_MESSAGE_OPTIMISEREQUEST_H
