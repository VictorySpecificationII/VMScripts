#!/bin/bash
main_menu_banner(){
 echo " 															    											"
 echo "						Welcome to Andrew's development environment creator!			    					"
 echo " 															    											"
 echo "			An unique User Interface (UI) that will take your desired environment as an input, and will install "
 echo "							 the necessary software to create it.				    							"
 echo " 					Please, ensure that this script is ran on a FRESH Ubuntu installation.		    		"
 echo "																												"
 echo " 		************************************************************************************************************************"
 echo "	             I highly recommend that for every environment, you create a Virtual Machine and run this script inside it. "
 echo "						    It's a lot cleaner and organized that way.									"
 echo "		************************************************************************************************************************"
 echo "															    												"
 echo "					Developed and Maintained by Antreas Christofi/VictorySpecificationII.		    			"
 echo "				             For any queries and bugs, please reach out to me on Github!						"
 echo "															    " 
}
#---------------------------------------------------------------------#
#--------------------------- Tool Functions --------------------------#
#---------------------------------------------------------------------#

option_REUGV() {
  echo "Unmanned Ground Vehicle environment selected. Proceeding..."
  sleep 2s
  
  bash Installers/Motorsport_Env.sh
}

option_VLSI() {
  echo "VLSI environment selected. Proceeding..."
  sleep 2s
  bash Installers/VLSI_Env.sh
}

option_REMGV(){
  echo "CAE Linux environment selected. Proceeding..."
  sleep 2s
  bash Installers/CAELinux_Env.sh
  }

press_enter() {
  echo "*******************************************************************"
  echo "****************************FINAL WARNING**************************"
  echo "*******************************************************************"
  echo " "
  echo "This script is meant to run on a FRESH Ubuntu installation;"
  echo " "
  echo "I am not responsible for breaking your current system; Last chance;"
  echo " "
  echo "Press Enter to continue, or Ctrl-C to stop this script. "
  read
  clear
}

incorrect_selection_prompt(){
  echo ""
  echo -n "Press Enter to continue"
  read
  clear
}

incorrect_selection() {
  echo "Unknown environment selected! Please try again."
}

#---------------------------------------------------------------------#
#------------------------------ Tool Menu ----------------------------#
#---------------------------------------------------------------------#

until [ "$selection" = "0" ]; do
  clear
  main_menu_banner
  echo ""
  echo "						1  -  Unmanned Ground Vehicle Environment"
  echo "						2  -  Very Large Scale Integration Environment"
  echo "						3  -  Open Source Engineering Environment"
  echo "						0  -  Exit"
  echo ""
  echo -n "						Enter selection: "
  read selection
  echo ""
  case $selection in
    1 ) clear ; press_enter; option_REUGV; break ;;
    2 ) clear ; press_enter; option_VLSI;  break ;;
	3 ) clear ; option_REMGV; break;;
    0 ) clear ; echo "Goodbye!"; sleep 1s; exit ;;
    * ) incorrect_selection ; incorrect_selection_prompt;;
  esac
done