#!/bin/bash
# Bash Menu Script Example
echo "===================EDA Launch Script=================="


PS3='Please enter your choice: '
options=("Quartus" "Vivado" "VSDFlow" "OpenROAD" "iVerilog" "Verilator" "MAGIC" "OpenTimer" "ngSpice" "KiCad" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Quartus")
            echo "Launching Quartus 19.1..."
	    sleep 2s
	    cd /tools/Intel/intelFPGA_lite/19.1/quartus/bin/
	    sudo ./quartus --64bit&
            ;;
        "Vivado")
            echo "Launching Vivado ISE 18.3..."
	    sleep 2s
	    cd /tools/Xilinx/Vivado/2018.3/bin/
	    sudo ./vivado
            ;;
        "VSDFlow")
            echo "Redirecting to VSDFlow environment..."
	    cd /home/andrew/Software/vsdflow
	    echo "Input path of Verilog file to run on VSDFlow"
            read pathtoverilogfile
            sudo ./vsdflow $pathtoverilogfile
	    ls
	    break
            ;;
	 "OpenROAD")
            echo "Redirecting to OpenROAD environment..."
	    docker run -it -u $(id -u ${USER}):$(id -g ${USER}) openroad/flow bash
	    break
            ;;
        "iVerilog")
            echo "Running iVerilog..."
	    echo "Icarus Verilog is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the ``vvp'' command. For synthesis, the compiler generates netlists in the desired format."
	    echo "Input path of Verilog file to run on iVerilog:"
            read pathtoverilogfile
            iverilog $pathtoverilogfile
	    ls
	    break
            ;;
	"Verilator")
            echo "Running Verilator v 4.020...\n"
	    echo "Verilator converts synthesizable (generally not behavioral) Verilog code, plus some Synthesis, SystemVerilog and a small subset of Verilog AMS into C++ or SystemC code. It is not a complete simulator, but a compiler."
	    sleep 2s
	    echo "Input path of Verilog file to run on Verilator:"
            read pathtoverilogfile
            verilator $pathtoverilogfile
	    break
	    ;;
	"MAGIC")
            echo "Launching MAGIC VLSI custom layout tool..."
	    sleep 2s
	    magic&
	    break
            ;;
	"OpenTimer")
            echo "Launching OpenTimer STA tool..."
	    sleep 2s
	    cd /home/andrew/OpenTimerInstallation/bin
	    ./ot-shell
	    break
            ;;
	"ngSpice")
            echo "Launching ngSpice Circuit Simulator tool..."
	    sleep 2s
	    ngspice
	    break
            ;;
	"KiCad")
            echo "Launching KiCad 5.1.5..."
	    sleep 2s
	    kicad&
	    break
            ;;
        "Quit")
            break
            ;;

        *) echo "invalid option $REPLY";;
    esac
done
