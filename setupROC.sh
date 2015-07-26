#!/bin/sh
# These variables tell ROS the TurtleBot configuration;
echo export TURTLEBOT_BASE=create2 >> ~/.bashrc
echo export TURTLEBOT_STACKS=circles >> ~/.bashrc
echo export TURTLEBOT_3D_SENSOR=asus_xtion_pro >> ~/.bashrc
echo export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0 >> ~/.bashrc
# Use the JetsonBot development paths before using the default
echo source ~/jetsonbot/devel/setup.bash >> ~/.bashrc
echo \# Allow RVIZ to work by unsetting the GTK_IM_MODULE environment variable >> ~/.bashrc
echo unset GTK_IM_MODULE >> ~/.bashrc
# The JetsonBot is the ROS_MASTER
echo \# Please set the following variables >> ~/.bashrc
echo \# export ROS_MASTER_URI=http://\<jetsonbot ip\>:11311 >> ~/.bashrc
echo \# export ROS_IP=\<this computers IP\> >> ~/.bashrc
# The ROS_HOSTNAME may need to be set
# export ROS_HOSTNAME=jetsonbot
# or
# export ROS_IP=<jetsonbot IP>
/bin/echo -e "\e[1;32mPlease set the IP addresses of the JetsonBot and this workstation in ~/.bashrc\e[0m"
/bin/echo -e "\e[1;32mUnder ROS_MASTER_URI and ROS_IP\e[0m"
/bin/echo -e "\e[1;32mJetson Robot Operating Center Software Setup.\e[0m"
