v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -110 -110 -70 {lab=out}
N -110 -70 -0 -70 {lab=out}
N 110 -110 110 -70 {lab=out}
N -0 -70 110 -70 {lab=out}
N 0 -70 0 -10 {lab=out}
N 110 -70 180 -70 {lab=out}
N 0 50 0 80 {lab=#net1}
N 0 140 0 180 {lab=DGND}
N 0 -240 0 -210 {lab=DVDD}
N -110 -210 0 -210 {lab=DVDD}
N -110 -210 -110 -170 {lab=DVDD}
N 0 -210 110 -210 {lab=DVDD}
N 110 -210 110 -170 {lab=DVDD}
N -210 -30 -150 -30 {lab=A}
N -150 -140 -150 -30 {lab=A}
N -150 -30 -150 20 {lab=A}
N -150 20 -40 20 {lab=A}
N 320 -140 320 -20 {lab=B}
N 150 -140 320 -140 {lab=B}
N 320 -20 320 110 {lab=B}
N 40 110 320 110 {lab=B}
C {sky130_fd_pr/pfet3_01v8.sym} 130 -140 2 0 {name=M1
W=1.68
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
C {sky130_fd_pr/pfet3_01v8.sym} -130 -140 0 0 {name=M2
W=1.68
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
C {sky130_fd_pr/nfet3_01v8.sym} -20 20 0 0 {name=M3
W=1.68
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
C {iopin.sym} 0 -240 3 0 {name=p1 lab=DVDD
}
C {iopin.sym} 0 180 1 0 {name=p2 lab=DGND
}
C {iopin.sym} -210 -30 2 0 {name=p3 lab=A}
C {iopin.sym} 320 -20 0 0 {name=p4 lab=B}
C {iopin.sym} 180 -70 0 0 {name=p5 lab=out}
C {sky130_fd_pr/nfet3_01v8.sym} 20 110 2 0 {name=M4
W=1.68
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
