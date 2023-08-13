v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 40 -20 40 20 {
lab=out}
N 40 80 40 90 {
lab=VSS}
N 40 90 60 90 {
lab=VSS}
N 60 50 60 90 {
lab=VSS}
N 40 50 60 50 {
lab=VSS}
N 40 -90 40 -80 {
lab=vdd}
N 40 -90 60 -90 {
lab=vdd}
N 60 -90 60 -50 {
lab=vdd}
N 40 -50 60 -50 {
lab=vdd}
N -10 50 0 50 {
lab=in}
N -10 -50 -10 50 {
lab=in}
N -10 -50 -0 -50 {
lab=in}
N 50 90 50 110 {
lab=VSS}
N -30 0 -10 0 {
lab=in}
N 50 -110 50 -90 {
lab=vdd}
N 40 0 70 0 {
lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 20 50 0 0 {name=M1
L=0.18
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -50 0 0 {name=M2
L=0.18
W=3
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -20 0 0 0 {name=p1 lab=in}
C {devices/iopin.sym} 50 100 1 0 {name=p2 lab=vss}
C {devices/iopin.sym} 50 -100 3 0 {name=p3 lab=vdd}
C {devices/opin.sym} 60 0 0 0 {name=p4 lab=out}
