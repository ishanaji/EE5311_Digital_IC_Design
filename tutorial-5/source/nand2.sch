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
N 0 50 0 80 {lab=#net1}
N 0 140 0 180 {lab=DGND}
N 0 -240 0 -210 {lab=DVDD}
N -110 -210 0 -210 {lab=DVDD}
N -110 -210 -110 -170 {lab=DVDD}
N 0 -210 110 -210 {lab=DVDD}
N 110 -210 110 -170 {lab=DVDD}
N -210 -30 -150 -30 {lab=DVDD}
N -150 -140 -150 -30 {lab=DVDD}
N -150 -30 -150 20 {lab=DVDD}
N -150 20 -40 20 {lab=DVDD}
N 150 -140 190 -140 {lab=A}
N 190 -140 190 110 {lab=A}
N 40 110 190 110 {lab=A}
N 330 -110 330 -70 {lab=#net2}
N 330 -70 440 -70 {lab=#net2}
N 550 -110 550 -70 {lab=#net2}
N 440 -70 550 -70 {lab=#net2}
N 440 -70 440 -10 {lab=#net2}
N 440 50 440 80 {lab=#net3}
N 440 140 440 180 {lab=DGND}
N 440 -240 440 -210 {lab=DVDD}
N 330 -210 440 -210 {lab=DVDD}
N 330 -210 330 -170 {lab=DVDD}
N 440 -210 550 -210 {lab=DVDD}
N 550 -210 550 -170 {lab=DVDD}
N 290 -140 290 -30 {lab=DVDD}
N 290 -30 290 20 {lab=DVDD}
N 290 20 400 20 {lab=DVDD}
N 590 -140 630 -140 {lab=out}
N 630 -140 630 110 {lab=out}
N 480 110 630 110 {lab=out}
N 0 180 440 180 {lab=DGND}
N -210 -240 0 -240 {lab=DVDD}
N -210 -240 -210 -30 {lab=DVDD}
N 0 -240 440 -240 {lab=DVDD}
N 290 -240 290 -140 {lab=DVDD}
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
C {iopin.sym} 190 -140 0 0 {name=p3 lab=A}
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
C {sky130_fd_pr/pfet3_01v8.sym} 570 -140 2 0 {name=M5
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
C {sky130_fd_pr/pfet3_01v8.sym} 310 -140 0 0 {name=M6
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
C {sky130_fd_pr/nfet3_01v8.sym} 420 20 0 0 {name=M7
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
C {sky130_fd_pr/nfet3_01v8.sym} 460 110 2 0 {name=M8
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
C {iopin.sym} 110 -70 0 0 {name=p4 lab=out
}
C {lab_wire.sym} 630 -140 2 0 {name=p5 sig_type=std_logic lab=out}
