// Generated by gencpp from file my_turtle_whitcomb/Velocity.msg
// DO NOT EDIT!


#ifndef MY_TURTLE_WHITCOMB_MESSAGE_VELOCITY_H
#define MY_TURTLE_WHITCOMB_MESSAGE_VELOCITY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_turtle_whitcomb
{
template <class ContainerAllocator>
struct Velocity_
{
  typedef Velocity_<ContainerAllocator> Type;

  Velocity_()
    : x(0.0)
    , y(0.0)  {
    }
  Velocity_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;




  typedef boost::shared_ptr< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> const> ConstPtr;

}; // struct Velocity_

typedef ::my_turtle_whitcomb::Velocity_<std::allocator<void> > Velocity;

typedef boost::shared_ptr< ::my_turtle_whitcomb::Velocity > VelocityPtr;
typedef boost::shared_ptr< ::my_turtle_whitcomb::Velocity const> VelocityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_turtle_whitcomb::Velocity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_turtle_whitcomb

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'my_turtle_whitcomb': ['/home/viki/catkin_ws/src/my_turtle_whitcomb/msg', '/home/viki/catkin_ws/src/my_turtle_whitcomb/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "209f516d3eb691f0663e25cb750d67c1";
  }

  static const char* value(const ::my_turtle_whitcomb::Velocity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x209f516d3eb691f0ULL;
  static const uint64_t static_value2 = 0x663e25cb750d67c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_turtle_whitcomb/Velocity";
  }

  static const char* value(const ::my_turtle_whitcomb::Velocity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
";
  }

  static const char* value(const ::my_turtle_whitcomb::Velocity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Velocity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_turtle_whitcomb::Velocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_turtle_whitcomb::Velocity_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TURTLE_WHITCOMB_MESSAGE_VELOCITY_H