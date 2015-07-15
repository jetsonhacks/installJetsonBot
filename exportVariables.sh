#!/bin/sh
# Set the export variables for JetsonBot
# This script replicates part of installJetsonBot.sh, and should just be used for
# informational purposes
# These variables tell ROS the TurtleBot configuration;
echo export TURTLEBOT_BASE=create2 >> ~/.bashrc
echo export TURTLEBOT_STACKS=circles >> ~/.bashrc
echo export TURTLEBOT_3D_SENSOR=asus_xtion_pro >> ~/.bashrc
echo export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0 >> ~/.bashrc
# Use the JetsonBot development paths before using the default
echo source ~/jetsonbot/devel/setup.bash >> ~/.bashrc
# The JetsonBot is the ROS_MASTER
echo export ROS_MASTER_URI=http://localhost:11311 >> ~/.bashrc
# The ROS_HOSTNAME may need to be set
# export ROS_HOSTNAME=jetsonbot
# or
# export ROS_IP=<jetsonbot IP>
