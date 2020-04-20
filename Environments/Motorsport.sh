#!/bin/bash
# Bash Menu Script Example

figlet -c "Motorsport Launch Script"

echo "																						   "
echo "This script amasses together a collection of software for UGV development."

echo "Created and maintained by Antreas Christofi, @VictorySpecificationII on GitHub."
echo " " 


PS3='Please enter your choice: '
options=("Anaconda3" "GNU Octave" "Jupyter Notebook" "ROS - Core" "ROS - Gazebo" "ROS - RViz" "ProjectChrono System Dynamics" "Quit")
select opt in "${options[@]}"
do
    case $opt in

    	 "Anaconda3")
            echo "Launching Anaconda3..."
	    	sleep 2s
	    	read -p 'Please specify the environment you wish to enter: ' env
	    	echo "To run anaconda-navigator, type anaconda-navigator as soon as you enter the environment."
	    	conda activate $env
	    	break
            ;;
        "GNU Octave")
            echo "Launching GNU Octave..."
	    	sleep 2s
	    	octave &>/dev/null &
	    	break
            ;;
		"Jupyter Notebook")
            echo "Launching Jupyter Notebook..."
	    	sleep 2s
	    	jupyter-notebook &>/dev/null &
	    	break
            ;;            
        "ROS - Core")
            echo "Launching ROS Melodic core..."
	    	sleep 2s
	    	roscore
	    	break
            ;;
        "ROS - Gazebo")
			echo "Launching Gazebo 3D Simulator..."
			gazebo-9.0.0 &>/dev/null &
			break
			;;
        "ROS - RViz")
			sleep 2s
			echo "Launching RViz 3D Visualizer..."
			rviz &>/dev/null &
			break
			;;
		"ProjectChrono System Dynamics")
            echo "Redirecting to documentation..."
	    	sleep 2s
	    	firefox --new-tab http://api.projectchrono.org/tutorial_table_of_content_chrono.html
	    	#echo "Section under active development, check back later..."
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
