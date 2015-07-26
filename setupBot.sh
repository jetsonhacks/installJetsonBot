#!/bin/sh
# These variables tell ROS the TurtleBot configuration;
echo export TURTLEBOT_BASE=create2 >> ~/.bashrc
echo export TURTLEBOT_STACKS=circles >> ~/.bashrc
echo export TURTLEBOT_3D_SENSOR=asus_xtion_pro >> ~/.bashrc
echo export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0 >> ~/.bashrc
# Use the JetsonBot development paths before using the default
echo source ~/jetsonbot/devel/setup.bash >> ~/.bashrc
# The JetsonBot is the ROS_MASTER
echo export ROS_MASTER_URI=http://localhost:11311 >> ~/.bashrc
echo \# Please set the following variable >> ~/.bashrc
echo \# export ROS_IP=\<this computers IP\> >> ~/.bashrc
/bin/echo -e "\e[1;32mPlease set the IP addresses of the JetsonBot in ~/.bashrc\e[0m"
/bin/echo -e "\e[1;32mUnder ROS_IP\e[0m"
/bin/echo -e "\e[1;32mJetsonBot Software Setup.\e[0m"


