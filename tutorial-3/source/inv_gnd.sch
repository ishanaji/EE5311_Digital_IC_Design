v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 0 10 20 {lab=out}
N -30 -30 -30 50 {lab=in}
N -70 10 -30 10 {lab=in}
N 10 10 80 10 {lab=out}
N 10 80 10 110 {lab=lgnd}
C {sky130_fd_pr/nfet3_01v8.sym} -10 50 0 0 {name=M1
W=0.42
L=0.15
body=GND
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
C {sky130_fd_pr/pfet3_01v8.sym} -10 -30 0 0 {name=M2
W=\{width_p\}
L=0.15
body=VDD
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
C {vdd.sym} 10 -60 0 0 {name=l1 lab=VDD}
C {ipin.sym} -70 10 0 0 {name=p1 lab=in}
C {opin.sym} 80 10 0 0 {name=p2 lab=out}
C {iopin.sym} 10 110 0 0 {name=p3 lab=Ignd}
