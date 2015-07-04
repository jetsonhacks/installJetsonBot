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
cd ..
catkin_make


