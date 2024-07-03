// generated from rosidl_typesupport_fastrtps_c/resource/idl__rosidl_typesupport_fastrtps_c.h.em
// with input from crazyflie_interfaces:msg/TrajectoryPolynomialPiece.idl
// generated code does not contain a copyright notice
#ifndef CRAZYFLIE_INTERFACES__MSG__DETAIL__TRAJECTORY_POLYNOMIAL_PIECE__ROSIDL_TYPESUPPORT_FASTRTPS_C_H_
#define CRAZYFLIE_INTERFACES__MSG__DETAIL__TRAJECTORY_POLYNOMIAL_PIECE__ROSIDL_TYPESUPPORT_FASTRTPS_C_H_


#include <stddef.h>
#include "rosidl_runtime_c/message_type_support_struct.h"
#include "rosidl_typesupport_interface/macros.h"
#include "crazyflie_interfaces/msg/rosidl_typesupport_fastrtps_c__visibility_control.h"
#include "crazyflie_interfaces/msg/detail/trajectory_polynomial_piece__struct.h"
#include "fastcdr/Cdr.h"

#ifdef __cplusplus
extern "C"
{
#endif

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
bool cdr_serialize_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  const crazyflie_interfaces__msg__TrajectoryPolynomialPiece * ros_message,
  eprosima::fastcdr::Cdr & cdr);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
bool cdr_deserialize_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  eprosima::fastcdr::Cdr &,
  crazyflie_interfaces__msg__TrajectoryPolynomialPiece * ros_message);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
size_t get_serialized_size_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  const void * untyped_ros_message,
  size_t current_alignment);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
size_t max_serialized_size_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  bool & full_bounded,
  bool & is_plain,
  size_t current_alignment);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
bool cdr_serialize_key_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  const crazyflie_interfaces__msg__TrajectoryPolynomialPiece * ros_message,
  eprosima::fastcdr::Cdr & cdr);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
size_t get_serialized_size_key_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  const void * untyped_ros_message,
  size_t current_alignment);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
size_t max_serialized_size_key_crazyflie_interfaces__msg__TrajectoryPolynomialPiece(
  bool & full_bounded,
  bool & is_plain,
  size_t current_alignment);

ROSIDL_TYPESUPPORT_FASTRTPS_C_PUBLIC_crazyflie_interfaces
const rosidl_message_type_support_t *
ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_c, crazyflie_interfaces, msg, TrajectoryPolynomialPiece)();

#ifdef __cplusplus
}
#endif

#endif  // CRAZYFLIE_INTERFACES__MSG__DETAIL__TRAJECTORY_POLYNOMIAL_PIECE__ROSIDL_TYPESUPPORT_FASTRTPS_C_H_
