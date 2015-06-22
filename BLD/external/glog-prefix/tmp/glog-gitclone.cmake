if("v0.3.4" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog'")
endif()

execute_process(
  COMMAND "/usr/bin/git" clone "https://github.com/google/glog" "glog"
  WORKING_DIRECTORY "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/google/glog'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout v0.3.4
  WORKING_DIRECTORY "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v0.3.4'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init
  WORKING_DIRECTORY "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive
  WORKING_DIRECTORY "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog'")
endif()

