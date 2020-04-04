#!/bin/bash
# Bash Menu Script Example
#echo "===================Motorsport Launch Script=================="

figlet -c "Motorsport Launch Script"

echo "This script amasses together a collection of software for UGV development and ECU tuning."
echo "It does not provide installation capabilities, as this is a work in progress. More "
echo "functionality will be added in the near future to provide a ready-to-run script to be "
echo "ran once on a fresh Ubuntu installation in  order to provide the full environment."
echo " "
echo "Created and maintained by Antreas Christofi, @VictorySpecificationII on GitHub."
echo " " 


PS3='Please enter your choice: '
options=("GNU Octave" "Jupyter Notebook" "Pycharm 2019.3" "TunerStudio" "MegaLogViewer" "ProjectChrono System Dynamics" "The Open Racing Car Simulator" "ROScore" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "GNU Octave")
            echo "Launching GNU Octave..."
	    	sleep 2s
	    	octave
            ;;
		"Jupyter Notebook")
            echo "Launching Jupyter Notebook..."
	    	sleep 2s
	    	jupyter-notebook
	    	break
            ;;
    	"Pycharm 2019.3")
        	echo "Launching Pycharm 2019.3..."
	    	sleep 2s
	    	pycharm-community&
	    	break
            ;;
		"TunerStudio")
            echo "Launching TunerStudio..."
	    	sleep 2s
	    	cd /home/andrew/Software/TunerStudioMS
	    	./TunerStudio.sh
	    	break
            ;;
		"MegaLogViewer")
            echo "Launching MegaLogViewer..."
	    	sleep 2s
	    	cd /home/andrew/Software/MegaLogViewerHD
	    	./MegaLogViewer.sh
	    	break
            ;;
		"ProjectChrono System Dynamics")
            echo "Redirecting to documentation..."
	    	sleep 2s
	    	firefox --new-tab http://api.projectchrono.org/tutorial_table_of_content_chrono.html
	    	#echo "Section under active development, check back later..."
	    	break
            ;;
    	"The Open Racing Car Simulator")
            echo "Launching The Open Racing Car Simulator..."
	    	sleep 2s
	    	torcs&
	    	break
            ;;
        "ROScore")
            echo "Launching ROScore..."
	    	sleep 2s
	    	roscore
	    	break
            ;;
        "Quit")
			echo "Goodbye!"
	    	sleep 1s
            break
            ;;

        *) echo "$REPLY is an invalid choice! Please input the number of the application you wish to run!";;
    esac
done
