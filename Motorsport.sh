#!/bin/bash
# Bash Menu Script Example
echo "===================Motorsport Launch Script=================="


PS3='Please enter your choice: '
options=("GNU Octave" "Jupyter Notebook" "Pycharm 2019.3" "TunerStudio" "MegaLogViewer" "ProjectChrono System Dynamics" "The Open Racing Car Simulator" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "GNU Octave")
            echo "Launching GNU Octave..."
	    sleep 2s
	    octave
            ;;
            "Quit")
            break
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
    
            "Quit")
            break
            ;;

        *) echo "invalid option $REPLY";;
    esac
done