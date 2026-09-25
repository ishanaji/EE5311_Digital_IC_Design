v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 10 -40 30 {lab=out}
N -80 -20 -80 60 {lab=in}
N -40 -20 -20 -20 {lab=DVDD}
N -20 -50 -20 -20 {lab=DVDD}
N -40 -50 -20 -50 {lab=DVDD}
N -40 60 -20 60 {lab=DGND}
N -20 60 -20 90 {lab=DGND}
N -40 90 -20 90 {lab=DGND}
N -40 90 -40 110 {lab=DGND}
N -110 20 -80 20 {lab=in}
N -40 20 -10 20 {lab=out}
N -40 -70 -40 -50 {lab=DVDD}
C {sky130_fd_pr/pfet_01v8.sym} -60 -20 0 0 {name=M1
W=0.84
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} -60 60 0 0 {name=M2
W=0.42
L=0.15
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
C {iopin.sym} -40 -70 3 0 {name=p1 lab=DVDD}
C {iopin.sym} -40 110 1 0 {name=p2 lab=DGND}
C {ipin.sym} -110 20 0 0 {name=p3 lab=in}
C {opin.sym} -10 20 0 0 {name=p4 lab=out}
