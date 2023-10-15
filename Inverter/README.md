# Inverter
## Content
1. [Schematic](#1-Schematic)
2. [Testbench](#2-Testbench)
3. [Netlist](#3-Netlist)
4. [Layout](#4-Layout)

## 1. Schematic
<img src='https://github.com/laurasmendozad/Circuit_Design/blob/main/img/inverter_schematic.png' height='500'>
  
Symbol  
<img src='https://github.com/laurasmendozad/Circuit_Design/blob/main/img/inverter_symbol.png' height='300'>

## 2. Testbench
<img src='https://github.com/laurasmendozad/Circuit_Design/blob/main/img/inverter_tb_schematic.png' height='500'>
  
Results  
<img src='https://github.com/laurasmendozad/Circuit_Design/blob/main/img/inverter_tb_results.svg' height='400'>
  
## 3. Netlist
### Inverter Netlist
```spice
.subckt inverter in vss vdd out
*.PININFO in:I vss:B vdd:B out:O
XM1 out in vss vss sky130_fd_pr__nfet_01v8 L=0.18 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 out in vdd vdd sky130_fd_pr__pfet_01v8 L=0.18 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
.ends
.end
```
### Inverter Testbench Netlist
```spice
**.subckt inverter_tb out in
*.opin out
*.opin in
x1 net1 in out GND inverter
V1 in GND PWL(0 0 20n 0 900n 1.8)
V2 net1 GND 1.8
**** begin user architecture code

.lib /home/laura/Documents/ic_design/OpenPDK/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt


.control
tran 1n 1u
plot V(in) V(out)
.endc

**** end user architecture code
**.ends

* expanding   symbol:  inverter.sym # of pins=4
** sym_path: /home/laura/Documents/Circuit Design/Inverter/xschem/inverter.sym
** sch_path: /home/laura/Documents/Circuit Design/Inverter/xschem/inverter.sch
.subckt inverter  vdd in out vss
*.ipin in
*.iopin vss
*.iopin vdd
*.opin out
XM1 out in vss vss sky130_fd_pr__nfet_01v8 L=0.18 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 out in vdd vdd sky130_fd_pr__pfet_01v8 L=0.18 W=3 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
.ends

.GLOBAL GND
.end
```
## 4. Layout
<img src='https://github.com/laurasmendozad/Circuit_Design/blob/main/img/inverter_layout.png' height='500'>
