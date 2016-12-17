#!/bin/bash

function usage(){
cat <<_EOT_
Usage:
  $0 pan_radian tilt_radian

Description:
  For demonstration dynamixel moving.

_EOT_
exit 1	
}

#confirm number of args
if [ $# -ne 2 ]; then
  usage
  exit 1
fi

rostopic pub -1 /pan_controller/command std_msgs/Float64 -- $1 &
sleep 1
rostopic pub -1 /tilt_controller/command std_msgs/Float64 -- $2
