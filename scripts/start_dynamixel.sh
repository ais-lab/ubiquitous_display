roslaunch ubiquitous_display pantilt_dxl_manager.launch &
sleep 1s
roslaunch ubiquitous_display pantilt_dxl_controller.launch & 
sleep 1s
roslaunch ubiquitous_display pantilt_dxl_joint_state_publisher.launch &
 
