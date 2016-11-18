roscore &
sleep 3
rosparam set hokuyo_node/port /dev/ttyACM1 &
rosrun hokuyo_node hokuyo_node &
#export LIBGL_ALWAYS_SOFTWARE=1 &
#sleep 10
#rosrun rviz rviz -d 'rospack find hokuyo_test_pkg'/hokuyo_test.rviz &
#rosrun tf static_transform_publisher 0 0 0 0 0 0 1 map my_frame 10 &

