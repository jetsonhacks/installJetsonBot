#!/bin/sh
# Installs the required packages and nodes for the JetsonBot
cd ~/
_dir="jetsonbot/src"
# Check to make sure that the JetsonBot catkin directory exists
[ ! -d "$_dir" ] && { echo "Error: Directory $_dir not found.\nPlease run createJetsonBotWS.sh to create the JetsonBot catkin workspace."; exit 2; }
cd ~/jetsonbot/src
git clone https://github.com/jetsonhacks/turtlebot.git
git clone https://github.com/jetsonhacks/turtlebot_create.git

