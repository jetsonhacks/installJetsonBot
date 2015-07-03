#!/bin/sh
# Create a ROS catkin workspace for JetsonBot
# JetsonBot is a ROS TurtleBot derived robot using the NVIDIA Jetson TK1
# This script assumes that ROS Indigo has already been installed on the Jetson
mkdir -p ~/jetsonbot/src
cd ~/jetsonbot/src
catkin_init_workspace
cd ~/jetsonbot
catkin_make


