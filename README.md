# General Purpose Bandgap Reference Circuit - avsdbgp_3v3_sky130_v2

A Bandgap Reference is an analog circuit, which is used to provide a constant output reference voltage being independent of Temperature, Process and Supply voltage variations. The analog IP **avsdbgp_3v3** is a General Purpose Bandgap Reference ciruit, which is designed using **Sky130nm** technology in this project.

For detailed information regarding the Bandgap Reference circuit click [here](https://github.com/vsdip/avsdbgp_3v3_sky130_v2/blob/main/Documents/General_purpose_BGR.pdf). The Design specifications provided for avsdbgp_3v3 can be found [here](https://github.com/vsdip/avsdbgp_3v3_sky130_v2/blob/main/Documents/Specifications.pdf). 

<p>&nbsp;</p>

# Table of Contents
* Performance parameters Bandgap Reference IP
 
* Circuit Implementation of Bandgap Reference IP

  - Block Diagram of Bandgap Reference IP
  - Schematic of Bandgap Reference IP
* Downloading the files on your System
* Pre-Layout Simulation of Bandgap Reference IP circuit using Ngspice
  - Ngspice
  - Pre-Layout Simulation plots of Bandgap Reference IP circuit
  - Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
  - Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
  - Temperature Coefficient of Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
  - Voltage Coefficient of Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
  - Start-Up Time of Vbgp @ RL = 100M ohms plot
  - On-Off-Current of Vbgp wrt Enable @ RL = 100M ohms plot
* BGR Layout
  - Magic
  - Layout
* Post-Layout Simulation of Bandgap Reference IP circuit using Ngspice
  - Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
  - Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
  - Temperature Coefficient of Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
  - Voltage Coefficient of Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
  - Start-Up Time of Vbgp @ RL = 100M ohms plot
  - On-Off-Current of Vbgp wrt Enable @ RL = 100M ohms plot
 

<p>&nbsp;</p>

# Performance parameters of Bandgap Reference IP
<p>&nbsp;</p>

|  Parameter  |        Description             |    Min      |     Type    |    Max      |     Unit    | Condition  |
|   :----:    |          :----:                |   :----:    |    :----:   |   :----:    |    :----:   |   :----:   |
|    VBGP     | Output reference voltage       |   1.19490   |   1.19756   |   1.19764   |     Volt    | T= -40 to 140C, VDD=3.3V |
|    VBGP     | Output reference voltage       |   1.11400   |   1.19756   |   1.21933   |     Volt    | VDD=2V to VDD=4V, T=27C |
|     VDD     |      Supply Voltage            |             |     3.3     |             |     Volt    | T=-40C to 125C|
|     IDD     |      Supply Current            |             |   21.9636   |             |      uA     |    EN=1    |
|     IDD     |      Supply Current            |             |    24.4     |             |      pA     |    EN=0    |
|     RL      |      Load Resistance           |             |     100     |             |      Mohm   |VDD=3.3V, T=27C|
<p>&nbsp;</p>

# Circuit Implementation of Bandgap Reference IP 
## Block Diagram of Bandgap Reference IP
![Block diagram](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/photo/block_diagram.png)

## Schematic of Bandgap Reference IP
<p>&nbsp;</p>

![Schematic](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/photo/Schematic.png)
<p>&nbsp;</p>

# Downloading the files on your System
<p>&nbsp;</p>

The files from this repository can be downloaded and used by the following commands :-
>`sudo apt install -y git`

>`git clone https://github.com/vsdip/avsdbgp_3v3_sky130_v2.git`
<p>&nbsp;</p>

# Pre-Layout Simulation of Bandgap Reference IP circuit

The circuit implementation of Bandgap reference IP **avsdbgp_3v3** is simulated using Ngspice to analyse its performance according to the Design Specifications provided. 
<p>&nbsp;</p>

## Ngspice
<p>&nbsp;</p>
Ngspice is an open source mixed-signal circuit simulator. To install Ngspice on Ubuntu, open terminal window and type :-

>`sudo apt-get install -y ngspice`

After successful installation, to invoke Ngspice type the following command on the terminal window.
>`ngspice <circuit file to be simulated>`

<p>&nbsp;</p>



## Pre- Layout Simulation plots of Bandgap Reference IP circuit
<p>&nbsp;</p>


To simulate the files for Pre- Layout simulations
<p>&nbsp;</p>

>`cd avsdbgp_3v3_sky130_v2/Pre_Layout_Simulations/Circuits/`
<p>&nbsp;</p>

## Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
<p>&nbsp;</p>
To observe the effect of temperature on the circuit, the temperature is varied from -40C to 140C. On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice temp_avsdbgp_3v3.cir`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-

<p>&nbsp;</p>

![Vbgp vs Temperature](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/temp_var.png)
<p>&nbsp;</p>


![Vbgp Vptat Vctat vs Temperature](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/temp_all.png)
<p>&nbsp;</p>

## Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
<p>&nbsp;</p>
To observe the effect of Supply voltage on the circuit, the temperature is varied from 2V to 4V. On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice vdd_variation_avsdbgp_3v3.cir`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Voltage vs Vbgp](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/vdd_var.png)
<p>&nbsp;</p>

## Temperature Coefficient of Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice Temp_coeff_avsdbgp_3v3.cir`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Temperature coefficient of Vbgp](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/temp_coeff.png)
<p>&nbsp;</p>

## Voltage Coefficient of Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice voltage_coeff_avsdbgp_3v3.cir`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Voltage coefficient of Vbgp](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/vol_coeff.png)
<p>&nbsp;</p>

## Start-Up Time of Vbgp @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice Start_up_avsdbgp_3v3.cir`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Start up circuit](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/Startup.png)
<p>&nbsp;</p>

## On-Off-Current of Vbgp wrt Enable @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice enable_current.cir`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Enable](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Pre_Layout_Simulations/Results/enable_current.png)
<p>&nbsp;</p>

# BGR Layout
<p>&nbsp;</p>

## Magic

The Layout for the circuit was done using Magic Layout editor tool. To observe the layout, install magic using the following commands :-
<p>&nbsp;</p>

>`sudo wget "http://opencircuitdesign.com/magic/archive/magic-8.3.122.tgz" `

>`tar -xvzf magic-8.3.122.tgz`

>` cd magic-8.3.122 `

>`sudo ./configure`

>`sudo make`

>`sudo make install`
<p>&nbsp;</p>

## Layout

After successful installation, type:-
<p>&nbsp;</p>

>`cd avsdbgp_3v3_sky130_v2/Layout/`

>` magic -T ../libs/sky130A.tech BGR.mag`
<p>&nbsp;</p>

![Layout](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/photo/Layout.png)
<p>&nbsp;</p>

# Post-Layout Simulation plots of Bandgap Reference IP circuit
<p>&nbsp;</p>

To simulate the files for Post-Layout simulations using ngspice :-

>`cd avsdbgp_3v3_sky130_v2/Post_Layout_Simulations/Circuits/`
<p>&nbsp;</p>

## Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
<p>&nbsp;</p>
To observe the effect of temperature on the circuit, the temperature is varied from -40C to 140C. On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice temp_avsdbgp_3v3.spice`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-

<p>&nbsp;</p>

![Vbgp vs Temperature](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Post_Layout_Simulations/Results/temp.png)
<p>&nbsp;</p>


![Vbgp Vptat Vctat vs Temperature](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Post_Layout_Simulations/Results/temp_all.png)
<p>&nbsp;</p>

## Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
<p>&nbsp;</p>
To observe the effect of Supply voltage on the circuit, the temperature is varied from 2V to 4V. On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice vdd_variation_avsdbgp_3v3.spice`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Voltage vs Vbgp](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Post_Layout_Simulations/Results/vdd_var.png)
<p>&nbsp;</p>

## Temperature Coefficient of Vbgp v/s Temperature [ -40C - 140C] @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice Temp_coeff_avsdbgp_3v3.spice`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Temperature coefficient of Vbgp](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Post_Layout_Simulations/Results/temp_coeff.png)
<p>&nbsp;</p>

## Voltage Coefficient of Vbgp v/s VDD [ 2V - 4V] @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice voltage_coeff_avsdbgp_3v3.spice`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Voltage coefficient of Vbgp](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Post_Layout_Simulations/Results/vol_coeff.png)
<p>&nbsp;</p>

## Start-Up Time of Vbgp @ RL = 100M ohms plot
<p>&nbsp;</p>
On the terminal window, type :-
<p>&nbsp;</p>

>`ngspice Start_up_avsdbgp_3v3.spice`
<p>&nbsp;</p>
The output plot as obtained can be seen below :-
<p>&nbsp;</p>

![Start up circuit](https://raw.githubusercontent.com/vsdip/avsdbgp_3v3_sky130_v2/main/Post_Layout_Simulations/Results/Startup.png)
<p>&nbsp;</p>

# Author
* [Anmol Purty](https://github.com/an3ol)

# Acknowledgement

* [Kunal Ghosh](https://github.com/kunalg123), Co-founder of VLSI System Design (VSD) Corp. Pvt. Ltd.
* [Tim Edwards](https://github.com/RTimothyEdwards), Senior Vice President of Analog and Design at efabless corporation.
* [Sheryl Corina Serrao](https://github.com/sherylcorina), Undergraduate Student, Mumbai University.

# Contact Information
* Anmol Purty - nmlpurty@gmail.com
