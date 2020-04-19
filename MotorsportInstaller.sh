#!/bin/bash

echo "Welcome $USER!"
sleep 4s
echo " "
echo "This script will automagically install all the necessary software for your UGV environment to "
echo "become a reality! For some applications, your user input will be required. So, I have included"
echo "helpful links to guide you through. See you on the other side!"

echo " "
echo "Created and maintained by Antreas Christofi, @VictorySpecificationII on GitHub."
echo " " 

sleep 4s

echo "Step0: Figlet!"
sleep 2s
sudo apt-get update -y
sudo apt-get install -y figlet


echo " "
mkdir -p /home/$USER/Software 
echo "Created Software directory in /home/$USER".
echo " "

echo " "
echo "Creating Launchers folder and moving the launch script there."
mkdir -p /home/$USER/Launchers
mv Motorsport.sh /home/$USER/Launchers

sleep 4s
echo "Step1: Anaconda3"
sleep 2s
echo "Downloading Anaconda3..."
echo "MANDATORY: Visit https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart and follow the instructions to complete the installation."
sleep 10s

echo "Good! Let's begin."
sleep 4s
echo " "
cd /home/$USER/Software
wget -v https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh
conda config --set auto_activate_base false
echo " "
echo "Anaconda3 installation complete."
sleep 2s
echo " "

echo "Step2:GNU Octave "
sleep 4s
echo " "
sudo apt-get install -y octave-control octave-image octave-io octave-optim octave-signal octave-statistics
echo " "
echo "GNU Octave installation complete."
sleep 2s
echo " "

echo " Step3:Python3, Pip, and Jupyter Notebook."
echo " "
sleep 4s
sudo apt-get -y update
sudo apt-get -y install python3 python-pip python-dev
sudo pip install --upgrade pip
sudo -H pip install jupyter
echo " "
echo " Python3, Pip and Jupyter Notebook installation complete."
sleep 2s
echo " "

echo "Installing ROS Melodic."
echo " "
sleep 4s
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update
echo " "
sleep 2s
echo "ROS Melodic installation complete."
echo " "
sleep 4s
echo "Adding alias to .bashrc..."
echo 'alias letsgoracing=". /home/$USER/Launchers/Motorsport.sh"' >> ~/.bashrc


echo "If you want to run TORCS as your UGV simulator, go to https://github.com/fmirus and download the patched client, then follow the instructions."
echo "If you come from the Formula Student domain, go to https://github.com/AMZ-Driverless/ and download FSSIM and any tools that you need for development."
echo " "
echo " "
echo "I will keep updating this script as I add more programs. Meanwhile, do modify the script to add your own launchers as you go! And if you feel like it, "
echo "share it with us!"
echo " "
echo "To run the launcher, type letsgoracing in terminal!"
sleep 10s
echo "The base system installation is complete. Happy experimenting!"
