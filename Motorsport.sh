#!/bin/bash
# Bash Menu Script Example
echo "===================Motorsport Launch Script=================="


PS3='Please enter your choice: '
options=("FreeCAD" "GNU Octave" "Jupyter Notebook" "TunerStudio" "MegaLogViewer" "ProjectChrono" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "FreeCAD")
            echo "Launching FreeCAD..."
	    sleep 2s
	    freecad&
	    break
            ;;
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
	"ProjectChrono")
            echo "Redirecting to example executables..."
	    sleep 2s
	    echo "Section under active development, check back later..."
	    break
            ;;
            "Quit")
            break
            ;;

        *) echo "invalid option $REPLY";;
    esac
done
