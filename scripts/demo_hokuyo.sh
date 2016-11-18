export LIBGL_ALWAYS_SOFTWARE=1
roslaunch hokuyo_node new_hokuyo_test.launch 
kill `ps -ef | grep -e hokuyo_node -e rviz -e roscore| awk '{print $2;}'`


