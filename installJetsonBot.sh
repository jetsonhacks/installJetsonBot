#!/bin/sh
# Installs the required packages and nodes for the JetsonBot
cd ~/
_dir="jetsonbot/src"
# Check to make sure that the JetsonBot catkin directory exists
[ ! -d "$_dir" ] && { echo "Error: Directory $_dir not found.\nPlease run createJetsonBotWS.sh to create the JetsonBot catkin workspace."; exit 2; }
# Install TurtleBot from repository
sudo apt-get install ros-indigo-turtlebot ros-indigo-turtlebot-apps ros-indigo-turtlebot-interactions ros-indigo-rocon-remocon ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs -y

cd ~/jetsonbot/src
git clone https://github.com/jetsonhacks/turtlebot.git
git clone https://github.com/jetsonhacks/turtlebot_create.git
git clone https://github.com/jetsonhacks/turtlebot_interactions.git
cd ..
catkin_make
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
/bin/echo -e "\e[1;32mJetsonBot Software Installed.\e[0m"
