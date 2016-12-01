#!/bin/bash

# Usage: ./list_hokuyo_devs.sh [options]
#
# Options:
#   -v     Show device name with Hokuyo ID
#   -h     Show help

getopts "hv" opts
if [ $opts == h ] ; then
  sed -rn '/^# Usage/,${/^#/!q;s/^# ?//;p}' "$0"
  exit 1 
fi

for dev in `ls /dev/ttyACM*` ; do
  id=`timeout 2 rosrun hokuyo_node getID $dev -`
  out_str=$dev

  if [ $opts == v ] ; then
    out_str="$out_str $id"
  fi

  if [ -n "$id" ] ; then
    echo $out_str
  fi
done
