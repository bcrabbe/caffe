

set(ENV{VS_UNICODE_OUTPUT} "")
set(command "${make};install")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-install-out.log"
  ERROR_FILE "/home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-install-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach(arg)
  set(msg "${msg}\nSee also\n  /home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-install-*.log\n")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "glog install command succeeded.  See also /home/sphere/gait_cnn/Caffe/caffe/BLD/external/glog-prefix/src/glog-stamp/glog-install-*.log\n")
  message(STATUS "${msg}")
endif()
