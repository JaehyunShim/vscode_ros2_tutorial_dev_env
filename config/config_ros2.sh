alias cw='cd ~/colcon_ws'
alias cs='cd ~/colcon_ws/src'
alias cb='cd ~/colcon_ws && colcon build --symlink-install && source ~/colcon_ws/install/local_setup.bash'
alias ct='cd ~/colcon_ws && colcon test'
alias ctr='cd ~/colcon_ws && colcon test-result --verbose'
alias ci='cd ~/colcon_ws && rosdep install --from-paths src --ignore-src --rosdistro foxy -r -y'
alias cr='cd ~/colcon_ws && rm -rf build install log'
alias pe="env | grep ROS"
alias ac='ament_cpplint'
alias af='ament_flake8'
alias ka='killall -9'
alias kg='killall -9 gazebo & killall -9 gzserver  & killall -9 gzclient'
alias rt='ros2 topic list'
alias rn='ros2 node list'
alias ros2reinstall='sudo apt remove ros-foxy-* -y && sudo apt autoremove -y && sudo apt install ros-foxy-desktop -y'
source /opt/ros/foxy/setup.bash
source ~/colcon_ws/install/local_setup.bash

# ROS2 Domain ID (0 ~ 232)
export ROS_DOMAIN_ID=0 # Default
#export ROS_DOMAIN_ID=1 # Developer
#export ROS_DOMAIN_ID=2 # Developer
#export ROS_DOMAIN_ID=3 # Developer

# Set rmw implementation
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp
#export RMW_IMPLEMENTATION=rmw_connext_cpp
#export RMW_IMPLEMENTATION=rmw_opensplice_cpp
#export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# Set the alias commands for test
alias testpub='ros2 run demo_nodes_cpp talker'
alias testsub='ros2 run demo_nodes_cpp listener'
alias testpubimg='ros2 run image_tools cam2image'
alias testsubimg='ros2 run image_tools showimage'
