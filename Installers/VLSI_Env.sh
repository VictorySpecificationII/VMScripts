#!/bin/bash

installation_finished_prompt(){
  echo ""
  echo -n "Press Enter to exit."
  read
  exit
}

echo " "
echo "Welcome $USER!"
sleep 4s
echo " "
echo "This script will automagically install all the necessary software for your VLSI environment to "
sleep 1s
echo "become a reality! For some applications, your user input will be required. So, I have included"
sleep 1s
echo "helpful links to guide you through. See you on the other side!"
sleep 1s
echo " "
echo "Created and maintained by Antreas Christofi, @VictorySpecificationII on GitHub."
echo " " 
sleep 1s
echo " "
echo "********************************Beginning of installation*************************************"
echo " "
sleep 2s

#DUMMY PROGRAM
echo " "
echo "O HAI"
echo " "
for i in {1..10} 
do
echo "Installing $i "
sleep 1s
done

# sleep 4s
# echo "Adding alias to .bashrc..."
# echo 'alias VLSI=". /home/$USER/Launchers/VLSI.sh"' >> ~/.bashrc

sleep 2s
echo " "
echo "***********************************End of installation****************************************"
echo " "
sleep 1s


echo " "
echo "I will keep updating this script as I add more programs. Meanwhile, do modify the script to add your own launchers as you go! "
sleep 1s
echo "And if you feel like it, share it with us!"
sleep 1s
echo " "
echo "***********************USAGE***********************"
echo "To run the launcher, type VLSI in terminal!"
echo "***************************************************"
echo " "
sleep 1s
echo "The base system installation is complete. Happy experimenting!"
installation_finished_prompt