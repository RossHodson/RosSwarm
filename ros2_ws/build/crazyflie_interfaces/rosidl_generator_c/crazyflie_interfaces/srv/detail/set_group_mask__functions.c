// generated from rosidl_generator_c/resource/idl__functions.c.em
// with input from crazyflie_interfaces:srv/SetGroupMask.idl
// generated code does not contain a copyright notice
#include "crazyflie_interfaces/srv/detail/set_group_mask__functions.h"

#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#include "rcutils/allocator.h"

bool
crazyflie_interfaces__srv__SetGroupMask_Request__init(crazyflie_interfaces__srv__SetGroupMask_Request * msg)
{
  if (!msg) {
    return false;
  }
  // group_mask
  return true;
}

void
crazyflie_interfaces__srv__SetGroupMask_Request__fini(crazyflie_interfaces__srv__SetGroupMask_Request * msg)
{
  if (!msg) {
    return;
  }
  // group_mask
}

bool
crazyflie_interfaces__srv__SetGroupMask_Request__are_equal(const crazyflie_interfaces__srv__SetGroupMask_Request * lhs, const crazyflie_interfaces__srv__SetGroupMask_Request * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // group_mask
  if (lhs->group_mask != rhs->group_mask) {
    return false;
  }
  return true;
}

bool
crazyflie_interfaces__srv__SetGroupMask_Request__copy(
  const crazyflie_interfaces__srv__SetGroupMask_Request * input,
  crazyflie_interfaces__srv__SetGroupMask_Request * output)
{
  if (!input || !output) {
    return false;
  }
  // group_mask
  output->group_mask = input->group_mask;
  return true;
}

crazyflie_interfaces__srv__SetGroupMask_Request *
crazyflie_interfaces__srv__SetGroupMask_Request__create(void)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Request * msg = (crazyflie_interfaces__srv__SetGroupMask_Request *)allocator.allocate(sizeof(crazyflie_interfaces__srv__SetGroupMask_Request), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(crazyflie_interfaces__srv__SetGroupMask_Request));
  bool success = crazyflie_interfaces__srv__SetGroupMask_Request__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
crazyflie_interfaces__srv__SetGroupMask_Request__destroy(crazyflie_interfaces__srv__SetGroupMask_Request * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    crazyflie_interfaces__srv__SetGroupMask_Request__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__init(crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Request * data = NULL;

  if (size) {
    data = (crazyflie_interfaces__srv__SetGroupMask_Request *)allocator.zero_allocate(size, sizeof(crazyflie_interfaces__srv__SetGroupMask_Request), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = crazyflie_interfaces__srv__SetGroupMask_Request__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        crazyflie_interfaces__srv__SetGroupMask_Request__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__fini(crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      crazyflie_interfaces__srv__SetGroupMask_Request__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

crazyflie_interfaces__srv__SetGroupMask_Request__Sequence *
crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * array = (crazyflie_interfaces__srv__SetGroupMask_Request__Sequence *)allocator.allocate(sizeof(crazyflie_interfaces__srv__SetGroupMask_Request__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__destroy(crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__are_equal(const crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * lhs, const crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!crazyflie_interfaces__srv__SetGroupMask_Request__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__copy(
  const crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * input,
  crazyflie_interfaces__srv__SetGroupMask_Request__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(crazyflie_interfaces__srv__SetGroupMask_Request);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    crazyflie_interfaces__srv__SetGroupMask_Request * data =
      (crazyflie_interfaces__srv__SetGroupMask_Request *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!crazyflie_interfaces__srv__SetGroupMask_Request__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          crazyflie_interfaces__srv__SetGroupMask_Request__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!crazyflie_interfaces__srv__SetGroupMask_Request__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}


bool
crazyflie_interfaces__srv__SetGroupMask_Response__init(crazyflie_interfaces__srv__SetGroupMask_Response * msg)
{
  if (!msg) {
    return false;
  }
  // structure_needs_at_least_one_member
  return true;
}

void
crazyflie_interfaces__srv__SetGroupMask_Response__fini(crazyflie_interfaces__srv__SetGroupMask_Response * msg)
{
  if (!msg) {
    return;
  }
  // structure_needs_at_least_one_member
}

bool
crazyflie_interfaces__srv__SetGroupMask_Response__are_equal(const crazyflie_interfaces__srv__SetGroupMask_Response * lhs, const crazyflie_interfaces__srv__SetGroupMask_Response * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // structure_needs_at_least_one_member
  if (lhs->structure_needs_at_least_one_member != rhs->structure_needs_at_least_one_member) {
    return false;
  }
  return true;
}

bool
crazyflie_interfaces__srv__SetGroupMask_Response__copy(
  const crazyflie_interfaces__srv__SetGroupMask_Response * input,
  crazyflie_interfaces__srv__SetGroupMask_Response * output)
{
  if (!input || !output) {
    return false;
  }
  // structure_needs_at_least_one_member
  output->structure_needs_at_least_one_member = input->structure_needs_at_least_one_member;
  return true;
}

crazyflie_interfaces__srv__SetGroupMask_Response *
crazyflie_interfaces__srv__SetGroupMask_Response__create(void)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Response * msg = (crazyflie_interfaces__srv__SetGroupMask_Response *)allocator.allocate(sizeof(crazyflie_interfaces__srv__SetGroupMask_Response), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(crazyflie_interfaces__srv__SetGroupMask_Response));
  bool success = crazyflie_interfaces__srv__SetGroupMask_Response__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
crazyflie_interfaces__srv__SetGroupMask_Response__destroy(crazyflie_interfaces__srv__SetGroupMask_Response * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    crazyflie_interfaces__srv__SetGroupMask_Response__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__init(crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Response * data = NULL;

  if (size) {
    data = (crazyflie_interfaces__srv__SetGroupMask_Response *)allocator.zero_allocate(size, sizeof(crazyflie_interfaces__srv__SetGroupMask_Response), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = crazyflie_interfaces__srv__SetGroupMask_Response__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        crazyflie_interfaces__srv__SetGroupMask_Response__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__fini(crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      crazyflie_interfaces__srv__SetGroupMask_Response__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

crazyflie_interfaces__srv__SetGroupMask_Response__Sequence *
crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * array = (crazyflie_interfaces__srv__SetGroupMask_Response__Sequence *)allocator.allocate(sizeof(crazyflie_interfaces__srv__SetGroupMask_Response__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__destroy(crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__are_equal(const crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * lhs, const crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!crazyflie_interfaces__srv__SetGroupMask_Response__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__copy(
  const crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * input,
  crazyflie_interfaces__srv__SetGroupMask_Response__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(crazyflie_interfaces__srv__SetGroupMask_Response);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    crazyflie_interfaces__srv__SetGroupMask_Response * data =
      (crazyflie_interfaces__srv__SetGroupMask_Response *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!crazyflie_interfaces__srv__SetGroupMask_Response__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          crazyflie_interfaces__srv__SetGroupMask_Response__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!crazyflie_interfaces__srv__SetGroupMask_Response__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}


// Include directives for member types
// Member `info`
#include "service_msgs/msg/detail/service_event_info__functions.h"
// Member `request`
// Member `response`
// already included above
// #include "crazyflie_interfaces/srv/detail/set_group_mask__functions.h"

bool
crazyflie_interfaces__srv__SetGroupMask_Event__init(crazyflie_interfaces__srv__SetGroupMask_Event * msg)
{
  if (!msg) {
    return false;
  }
  // info
  if (!service_msgs__msg__ServiceEventInfo__init(&msg->info)) {
    crazyflie_interfaces__srv__SetGroupMask_Event__fini(msg);
    return false;
  }
  // request
  if (!crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__init(&msg->request, 0)) {
    crazyflie_interfaces__srv__SetGroupMask_Event__fini(msg);
    return false;
  }
  // response
  if (!crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__init(&msg->response, 0)) {
    crazyflie_interfaces__srv__SetGroupMask_Event__fini(msg);
    return false;
  }
  return true;
}

void
crazyflie_interfaces__srv__SetGroupMask_Event__fini(crazyflie_interfaces__srv__SetGroupMask_Event * msg)
{
  if (!msg) {
    return;
  }
  // info
  service_msgs__msg__ServiceEventInfo__fini(&msg->info);
  // request
  crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__fini(&msg->request);
  // response
  crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__fini(&msg->response);
}

bool
crazyflie_interfaces__srv__SetGroupMask_Event__are_equal(const crazyflie_interfaces__srv__SetGroupMask_Event * lhs, const crazyflie_interfaces__srv__SetGroupMask_Event * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  // info
  if (!service_msgs__msg__ServiceEventInfo__are_equal(
      &(lhs->info), &(rhs->info)))
  {
    return false;
  }
  // request
  if (!crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__are_equal(
      &(lhs->request), &(rhs->request)))
  {
    return false;
  }
  // response
  if (!crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__are_equal(
      &(lhs->response), &(rhs->response)))
  {
    return false;
  }
  return true;
}

bool
crazyflie_interfaces__srv__SetGroupMask_Event__copy(
  const crazyflie_interfaces__srv__SetGroupMask_Event * input,
  crazyflie_interfaces__srv__SetGroupMask_Event * output)
{
  if (!input || !output) {
    return false;
  }
  // info
  if (!service_msgs__msg__ServiceEventInfo__copy(
      &(input->info), &(output->info)))
  {
    return false;
  }
  // request
  if (!crazyflie_interfaces__srv__SetGroupMask_Request__Sequence__copy(
      &(input->request), &(output->request)))
  {
    return false;
  }
  // response
  if (!crazyflie_interfaces__srv__SetGroupMask_Response__Sequence__copy(
      &(input->response), &(output->response)))
  {
    return false;
  }
  return true;
}

crazyflie_interfaces__srv__SetGroupMask_Event *
crazyflie_interfaces__srv__SetGroupMask_Event__create(void)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Event * msg = (crazyflie_interfaces__srv__SetGroupMask_Event *)allocator.allocate(sizeof(crazyflie_interfaces__srv__SetGroupMask_Event), allocator.state);
  if (!msg) {
    return NULL;
  }
  memset(msg, 0, sizeof(crazyflie_interfaces__srv__SetGroupMask_Event));
  bool success = crazyflie_interfaces__srv__SetGroupMask_Event__init(msg);
  if (!success) {
    allocator.deallocate(msg, allocator.state);
    return NULL;
  }
  return msg;
}

void
crazyflie_interfaces__srv__SetGroupMask_Event__destroy(crazyflie_interfaces__srv__SetGroupMask_Event * msg)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (msg) {
    crazyflie_interfaces__srv__SetGroupMask_Event__fini(msg);
  }
  allocator.deallocate(msg, allocator.state);
}


bool
crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__init(crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * array, size_t size)
{
  if (!array) {
    return false;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Event * data = NULL;

  if (size) {
    data = (crazyflie_interfaces__srv__SetGroupMask_Event *)allocator.zero_allocate(size, sizeof(crazyflie_interfaces__srv__SetGroupMask_Event), allocator.state);
    if (!data) {
      return false;
    }
    // initialize all array elements
    size_t i;
    for (i = 0; i < size; ++i) {
      bool success = crazyflie_interfaces__srv__SetGroupMask_Event__init(&data[i]);
      if (!success) {
        break;
      }
    }
    if (i < size) {
      // if initialization failed finalize the already initialized array elements
      for (; i > 0; --i) {
        crazyflie_interfaces__srv__SetGroupMask_Event__fini(&data[i - 1]);
      }
      allocator.deallocate(data, allocator.state);
      return false;
    }
  }
  array->data = data;
  array->size = size;
  array->capacity = size;
  return true;
}

void
crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__fini(crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * array)
{
  if (!array) {
    return;
  }
  rcutils_allocator_t allocator = rcutils_get_default_allocator();

  if (array->data) {
    // ensure that data and capacity values are consistent
    assert(array->capacity > 0);
    // finalize all array elements
    for (size_t i = 0; i < array->capacity; ++i) {
      crazyflie_interfaces__srv__SetGroupMask_Event__fini(&array->data[i]);
    }
    allocator.deallocate(array->data, allocator.state);
    array->data = NULL;
    array->size = 0;
    array->capacity = 0;
  } else {
    // ensure that data, size, and capacity values are consistent
    assert(0 == array->size);
    assert(0 == array->capacity);
  }
}

crazyflie_interfaces__srv__SetGroupMask_Event__Sequence *
crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__create(size_t size)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * array = (crazyflie_interfaces__srv__SetGroupMask_Event__Sequence *)allocator.allocate(sizeof(crazyflie_interfaces__srv__SetGroupMask_Event__Sequence), allocator.state);
  if (!array) {
    return NULL;
  }
  bool success = crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__init(array, size);
  if (!success) {
    allocator.deallocate(array, allocator.state);
    return NULL;
  }
  return array;
}

void
crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__destroy(crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * array)
{
  rcutils_allocator_t allocator = rcutils_get_default_allocator();
  if (array) {
    crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__fini(array);
  }
  allocator.deallocate(array, allocator.state);
}

bool
crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__are_equal(const crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * lhs, const crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * rhs)
{
  if (!lhs || !rhs) {
    return false;
  }
  if (lhs->size != rhs->size) {
    return false;
  }
  for (size_t i = 0; i < lhs->size; ++i) {
    if (!crazyflie_interfaces__srv__SetGroupMask_Event__are_equal(&(lhs->data[i]), &(rhs->data[i]))) {
      return false;
    }
  }
  return true;
}

bool
crazyflie_interfaces__srv__SetGroupMask_Event__Sequence__copy(
  const crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * input,
  crazyflie_interfaces__srv__SetGroupMask_Event__Sequence * output)
{
  if (!input || !output) {
    return false;
  }
  if (output->capacity < input->size) {
    const size_t allocation_size =
      input->size * sizeof(crazyflie_interfaces__srv__SetGroupMask_Event);
    rcutils_allocator_t allocator = rcutils_get_default_allocator();
    crazyflie_interfaces__srv__SetGroupMask_Event * data =
      (crazyflie_interfaces__srv__SetGroupMask_Event *)allocator.reallocate(
      output->data, allocation_size, allocator.state);
    if (!data) {
      return false;
    }
    // If reallocation succeeded, memory may or may not have been moved
    // to fulfill the allocation request, invalidating output->data.
    output->data = data;
    for (size_t i = output->capacity; i < input->size; ++i) {
      if (!crazyflie_interfaces__srv__SetGroupMask_Event__init(&output->data[i])) {
        // If initialization of any new item fails, roll back
        // all previously initialized items. Existing items
        // in output are to be left unmodified.
        for (; i-- > output->capacity; ) {
          crazyflie_interfaces__srv__SetGroupMask_Event__fini(&output->data[i]);
        }
        return false;
      }
    }
    output->capacity = input->size;
  }
  output->size = input->size;
  for (size_t i = 0; i < input->size; ++i) {
    if (!crazyflie_interfaces__srv__SetGroupMask_Event__copy(
        &(input->data[i]), &(output->data[i])))
    {
      return false;
    }
  }
  return true;
}
