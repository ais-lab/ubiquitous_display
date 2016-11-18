roscore &
sleep 3
roslaunch youbot_driver_ros_interface  youbot_driver.launch &
roslaunch rosbridge_server rosbridge_tcp.launch &
