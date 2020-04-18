#!/bin/bash

echo "Welcome $USER!"
echo" "
echo "This script will automagically install all the necessary software for your UGV environment to "
echo "become a reality! For some applications, your user input will be required. So, I have included"
echo "helpful links to guide you through. See you on the other side!"

sleep 2s
echo " "
echo "Creating Software directory in /home/$USER"
mkdir -p /home/$USER/Software 
echo " "

echo "Step0: Figlet!"
sudo apt-get update -y
sudo apt-get install -y figlet

echo "Step1: Anaconda3"
sleep 1s
echo "Downloading Anaconda3..."
echo "MANDATORY: Visit https://www.digitalocean.com/community/tutorials/how-to-install-anaconda-on-ubuntu-18-04-quickstart and follow the instructions to complete the installation."
sleep 10s
openlink="N"
while [$openlink != "Y"]
	read -p 'Have you opened the link?: (Y/N) ' openlink
echo " "
echo "Good! Let's begin."
echo " "
cd home/$USER/Software
wget -v https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh
bash Anaconda3-2020.02-Linux-x86_64.sh
echo 'CONDA_AUTO_ACTIVATE_BASE=false' >> ~/.bashrc
echo " "
echo "Anaconda3 installation complete."
sleep 2s
echo " "

echo "Step2:GNU Octave "
echo " "
echo "Installing Flatpak..."
sudo apt-get -y install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.octave.Octave
echo " "
echo "GNU Octave installation complete."
sleep 2s
echo " "

echo " Step3:Python3, Pip, and Jupyter Notebook."
echo " "
sudo apt-get update
sudo apt-get -y install python3 python-pip python-dev
sudo pip install --upgrade pip
sudo -H pip install jupyter
echo " "
echo " Python3, Pip and Jupyter Notebook installation complete."
sleep 2s
echo " "

echo "Installing ROS Melodic."
echo " "
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


echo "If you want to run TORCS as your UGV simulator, go to https://github.com/fmirus and download the patched client, then follow the instructions."
echo "If you come from the Formula Student domain, go to https://github.com/AMZ-Driverless/ and download FSSIM and any tools that you need for development."
echo " "
echo " "
echo "I will keep updating this script as I add more programs. Meanwhile, do modify the script to add your own launchers as you go! And if you feel like it, "
echo "share it with us!"
echo " "
sleep 10s
echo "The base system installation is complete. Happy experimenting!"