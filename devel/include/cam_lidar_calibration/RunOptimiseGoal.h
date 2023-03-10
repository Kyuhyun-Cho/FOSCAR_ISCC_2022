// Generated by gencpp from file cam_lidar_calibration/RunOptimiseGoal.msg
// DO NOT EDIT!


#ifndef CAM_LIDAR_CALIBRATION_MESSAGE_RUNOPTIMISEGOAL_H
#define CAM_LIDAR_CALIBRATION_MESSAGE_RUNOPTIMISEGOAL_H


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
struct RunOptimiseGoal_
{
  typedef RunOptimiseGoal_<ContainerAllocator> Type;

  RunOptimiseGoal_()
    {
    }
  RunOptimiseGoal_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RunOptimiseGoal_

typedef ::cam_lidar_calibration::RunOptimiseGoal_<std::allocator<void> > RunOptimiseGoal;

typedef boost::shared_ptr< ::cam_lidar_calibration::RunOptimiseGoal > RunOptimiseGoalPtr;
typedef boost::shared_ptr< ::cam_lidar_calibration::RunOptimiseGoal const> RunOptimiseGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace cam_lidar_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cam_lidar_calibration/RunOptimiseGoal";
  }

  static const char* value(const ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Goal\n"
;
  }

  static const char* value(const ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RunOptimiseGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::cam_lidar_calibration::RunOptimiseGoal_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CAM_LIDAR_CALIBRATION_MESSAGE_RUNOPTIMISEGOAL_H
