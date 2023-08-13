v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -120 0 -70 {
lab=#net1}
N -320 120 -250 120 {
lab=GND}
N -0 70 0 120 {
lab=GND}
N -320 80 -320 120 {
lab=GND}
N -250 80 -250 120 {
lab=GND}
N -250 120 -250 130 {
lab=GND}
N -250 120 0 120 {
lab=GND}
N -250 -0 -250 20 {
lab=in}
N -250 -0 -120 -0 {
lab=in}
N -320 -120 -0 -120 {
lab=#net1}
N -320 -120 -320 20 {
lab=#net1}
N -250 -20 -250 0 {
lab=in}
N 160 0 190 0 {
lab=out}
N -250 -20 -230 -20 {
lab=in}
C {inverter.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -250 50 0 0 {name=V1 value="PWL(0 0 20n 0 900n 1.8)"}
C {devices/vsource.sym} -320 50 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -250 130 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 180 0 0 0 {name=p1 lab=out}
C {devices/opin.sym} -240 -20 0 0 {name=p2 lab=in}
C {devices/code_shown.sym} -330 210 0 0 {name=s1 only_toplevel=false value=".lib /home/laura/Documents/ic_design/OpenPDK/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} -330 270 0 0 {name=s2 only_toplevel=false value=".control
tran 1n 1u
plot V(in) V(out)
.endc"}
