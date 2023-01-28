// Generated by gencpp from file morai_msgs/RadarDetections.msg
// DO NOT EDIT!


#ifndef MORAI_MSGS_MESSAGE_RADARDETECTIONS_H
#define MORAI_MSGS_MESSAGE_RADARDETECTIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <morai_msgs/RadarDetection.h>

namespace morai_msgs
{
template <class ContainerAllocator>
struct RadarDetections_
{
  typedef RadarDetections_<ContainerAllocator> Type;

  RadarDetections_()
    : header()
    , detections()  {
    }
  RadarDetections_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , detections(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::morai_msgs::RadarDetection_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::morai_msgs::RadarDetection_<ContainerAllocator> >::other >  _detections_type;
  _detections_type detections;





  typedef boost::shared_ptr< ::morai_msgs::RadarDetections_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::morai_msgs::RadarDetections_<ContainerAllocator> const> ConstPtr;

}; // struct RadarDetections_

typedef ::morai_msgs::RadarDetections_<std::allocator<void> > RadarDetections;

typedef boost::shared_ptr< ::morai_msgs::RadarDetections > RadarDetectionsPtr;
typedef boost::shared_ptr< ::morai_msgs::RadarDetections const> RadarDetectionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::morai_msgs::RadarDetections_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::morai_msgs::RadarDetections_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::morai_msgs::RadarDetections_<ContainerAllocator1> & lhs, const ::morai_msgs::RadarDetections_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.detections == rhs.detections;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::morai_msgs::RadarDetections_<ContainerAllocator1> & lhs, const ::morai_msgs::RadarDetections_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace morai_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::morai_msgs::RadarDetections_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::morai_msgs::RadarDetections_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::morai_msgs::RadarDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::morai_msgs::RadarDetections_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::morai_msgs::RadarDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::morai_msgs::RadarDetections_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::morai_msgs::RadarDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2b152d3e41735e99fec72c55c819ab7e";
  }

  static const char* value(const ::morai_msgs::RadarDetections_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2b152d3e41735e99ULL;
  static const uint64_t static_value2 = 0xfec72c55c819ab7eULL;
};

template<class ContainerAllocator>
struct DataType< ::morai_msgs::RadarDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "morai_msgs/RadarDetections";
  }

  static const char* value(const ::morai_msgs::RadarDetections_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::morai_msgs::RadarDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"RadarDetection[] detections\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: morai_msgs/RadarDetection\n"
"# This message relates only to FMCW radar.  \n"
"# All variables below are relative to the radar's frame of reference.\n"
"# This message is not meant to be used alone but as part of a stamped or array message.\n"
"\n"
"# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)\n"
"\n"
"uint16 detection_id                       # An optional classification of the object (see above)\n"
"geometry_msgs/Point position                # x, y, z coordinates of the centroid of the object being tracked.\n"
"\n"
"float32 azimuth\n"
"float32 rangerate\n"
"float32 amplitude\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::morai_msgs::RadarDetections_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::morai_msgs::RadarDetections_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.detections);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RadarDetections_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::morai_msgs::RadarDetections_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::morai_msgs::RadarDetections_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "detections[]" << std::endl;
    for (size_t i = 0; i < v.detections.size(); ++i)
    {
      s << indent << "  detections[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::morai_msgs::RadarDetection_<ContainerAllocator> >::stream(s, indent + "    ", v.detections[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MORAI_MSGS_MESSAGE_RADARDETECTIONS_H
