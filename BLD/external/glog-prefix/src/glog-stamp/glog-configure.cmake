

set(ENV{VS_UNICODE_OUTPUT} "")
set(command "env;CFLAGS=-fPIC;CXXFLAGS=-fPIC;/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog/configure;--prefix=/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-install;--enable-shared=no;--enable-static=yes;--with-gflags=/..")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-configure-out.log"
  ERROR_FILE "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-configure-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach(arg)
  set(msg "${msg}\nSee also\n  /home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-configure-*.log\n")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "glog configure command succeeded.  See also /home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-configure-*.log\n")
  message(STATUS "${msg}")
endif()
