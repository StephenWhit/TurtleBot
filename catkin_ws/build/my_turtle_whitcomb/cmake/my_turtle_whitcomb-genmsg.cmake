# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "my_turtle_whitcomb: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imy_turtle_whitcomb:/home/viki/catkin_ws/src/my_turtle_whitcomb/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Imy_turtle_whitcomb:/home/viki/catkin_ws/src/my_turtle_whitcomb/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(my_turtle_whitcomb_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg" NAME_WE)
add_custom_target(_my_turtle_whitcomb_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "my_turtle_whitcomb" "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(my_turtle_whitcomb
  "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_turtle_whitcomb
)

### Generating Services

### Generating Module File
_generate_module_cpp(my_turtle_whitcomb
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_turtle_whitcomb
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(my_turtle_whitcomb_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(my_turtle_whitcomb_generate_messages my_turtle_whitcomb_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg" NAME_WE)
add_dependencies(my_turtle_whitcomb_generate_messages_cpp _my_turtle_whitcomb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_turtle_whitcomb_gencpp)
add_dependencies(my_turtle_whitcomb_gencpp my_turtle_whitcomb_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_turtle_whitcomb_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(my_turtle_whitcomb
  "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_turtle_whitcomb
)

### Generating Services

### Generating Module File
_generate_module_lisp(my_turtle_whitcomb
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_turtle_whitcomb
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(my_turtle_whitcomb_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(my_turtle_whitcomb_generate_messages my_turtle_whitcomb_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg" NAME_WE)
add_dependencies(my_turtle_whitcomb_generate_messages_lisp _my_turtle_whitcomb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_turtle_whitcomb_genlisp)
add_dependencies(my_turtle_whitcomb_genlisp my_turtle_whitcomb_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_turtle_whitcomb_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(my_turtle_whitcomb
  "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_turtle_whitcomb
)

### Generating Services

### Generating Module File
_generate_module_py(my_turtle_whitcomb
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_turtle_whitcomb
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(my_turtle_whitcomb_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(my_turtle_whitcomb_generate_messages my_turtle_whitcomb_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/viki/catkin_ws/src/my_turtle_whitcomb/msg/Velocity.msg" NAME_WE)
add_dependencies(my_turtle_whitcomb_generate_messages_py _my_turtle_whitcomb_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(my_turtle_whitcomb_genpy)
add_dependencies(my_turtle_whitcomb_genpy my_turtle_whitcomb_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS my_turtle_whitcomb_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_turtle_whitcomb)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/my_turtle_whitcomb
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(my_turtle_whitcomb_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET my_turtle_whitcomb_generate_messages_cpp)
  add_dependencies(my_turtle_whitcomb_generate_messages_cpp my_turtle_whitcomb_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_turtle_whitcomb)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/my_turtle_whitcomb
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(my_turtle_whitcomb_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET my_turtle_whitcomb_generate_messages_lisp)
  add_dependencies(my_turtle_whitcomb_generate_messages_lisp my_turtle_whitcomb_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_turtle_whitcomb)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_turtle_whitcomb\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/my_turtle_whitcomb
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(my_turtle_whitcomb_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET my_turtle_whitcomb_generate_messages_py)
  add_dependencies(my_turtle_whitcomb_generate_messages_py my_turtle_whitcomb_generate_messages_py)
endif()
