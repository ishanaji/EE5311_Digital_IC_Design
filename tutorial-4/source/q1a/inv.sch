v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -40 50 -40 {lab=in}
N -0 -40 -0 70 {lab=in}
N -0 70 50 70 {lab=in}
N 90 -130 90 -70 {lab=DVDD}
N 90 100 90 130 {lab=DGND}
N 90 -10 90 40 {lab=out}
N 90 10 180 10 {lab=out}
C {sky130_fd_pr/pfet3_01v8.sym} 70 -40 0 0 {name=M1
W=0.84
L=0.15
body=DVDD
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
C {sky130_fd_pr/nfet3_01v8.sym} 70 70 0 0 {name=M2
W=0.42
L=0.15
body=DGND
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
C {ipin.sym} 0 20 0 0 {name=p1 lab=in}
C {opin.sym} 180 10 0 0 {name=p2 lab=out}
C {iopin.sym} 90 -130 3 0 {name=p3 lab=DVDD}
C {iopin.sym} 90 130 1 0 {name=p4 lab=DGND}
