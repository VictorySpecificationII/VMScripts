#!/bin/bash

installation_finished_prompt(){
  echo ""
  echo -n "Press Enter to exit."
  read
  exit
}

  echo " "
  echo "This Linux distribution contains a wide array of software - CAD, FEA, CFD,"
  sleep 1s
  echo " "
  echo "Matlab and Simulink open source alternatives for control system design, and more!"
  sleep 1s
  echo " "
  echo "There is a manual on its desktop which highlights all of it's features."
  sleep 1s
  echo " "
  echo "Do check it out, and happy experimentation!"
  sleep 1s
  echo " "
  sleep 1s
  echo "Opening CAELinux website on your browser..."
  sleep 2s
  echo " "
  firefox -new-tab -url https://caelinux.com/CMS3/index.php/download
  echo " "
  sleep 1s
  echo "Downloading .iso file..."
  echo " "

  sleep 1s
  echo " "
  echo "*******************************************************Beginning of download******************************************************"
  echo " "
  sleep 2s

  wget -v -O CAELinux2018.iso 'https://downloads.sourceforge.net/project/caelinux/CAELinux2018/caelinux2018.iso?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fcaelinux%2Ffiles%2Flatest%2Fdownload&ts=1587374998&use_mirror=netix'
 
  sleep 2s
  echo " "
  echo "**********************************************************End of download*********************************************************"
  echo " "
  sleep 1s


  echo " "
  echo "***************************************************************USAGE**************************************************************"
  echo "Either burn the ISO file to a Flash Drive and install it on a machine, or download VirtualBox and create a Virtual Machine for it."
  echo "**********************************************************************************************************************************"
  echo " "
  sleep 1s
  installation_finished_prompt
  