v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -110 -50 -70 {lab=#net1}
N 10 -110 10 -70 {lab=#net2}
N -50 70 -50 110 {lab=#net3}
N 10 70 10 110 {lab=#net2}
N -20 -30 -20 30 {lab=CLK}
N -40 0 -20 0 {lab=CLK}
N -310 90 -270 90 {lab=D}
N -120 90 -50 90 {lab=#net3}
N -120 -90 -50 -90 {lab=#net1}
N 10 -90 80 -90 {lab=#net2}
N 10 90 50 90 {lab=#net2}
N 50 -90 50 90 {lab=#net2}
N -20 150 -20 170 {lab=CLKB}
N -20 -180 -20 -150 {lab=CLKB}
N -300 -90 -270 -90 {lab=#net4}
N -300 -230 -300 -90 {lab=#net4}
N -300 -230 260 -230 {lab=#net4}
N 260 -230 260 -90 {lab=#net4}
N 230 -90 260 -90 {lab=#net4}
N -230 -50 -230 -30 {lab=DGND}
N 590 -110 590 -70 {lab=#net5}
N 650 -110 650 -70 {lab=QB}
N 590 70 590 110 {lab=#net6}
N 650 70 650 110 {lab=QB}
N 620 -30 620 30 {lab=CLKB}
N 600 0 620 0 {lab=CLKB}
N 330 90 370 90 {lab=#net4}
N 520 90 590 90 {lab=#net6}
N 520 -90 590 -90 {lab=#net5}
N 650 -90 720 -90 {lab=QB}
N 650 90 690 90 {lab=QB}
N 690 -90 690 90 {lab=QB}
N 620 150 620 170 {lab=CLK}
N 620 -180 620 -150 {lab=CLK}
N 340 -90 370 -90 {lab=#net7}
N 340 -230 340 -90 {lab=#net7}
N 340 -230 900 -230 {lab=#net7}
N 900 -230 900 -90 {lab=#net7}
N 870 -90 900 -90 {lab=#net7}
N 260 -90 260 90 {lab=#net4}
N 260 90 330 90 {lab=#net4}
N 690 90 720 90 {lab=QB}
N 870 90 900 90 {lab=Q}
N 690 90 690 160 {lab=QB}
N -230 -150 -230 -130 {lab=DVDD}
N -230 130 -230 150 {lab=DGND}
N -230 30 -230 50 {lab=DVDD}
N 120 -50 120 -30 {lab=DGND}
N 120 -150 120 -130 {lab=DVDD}
N 410 -50 410 -30 {lab=DGND}
N 410 -150 410 -130 {lab=DVDD}
N 410 130 410 150 {lab=DGND}
N 410 30 410 50 {lab=DVDD}
N 760 130 760 150 {lab=DGND}
N 760 30 760 50 {lab=DVDD}
N 760 -50 760 -30 {lab=DGND}
N 760 -150 760 -130 {lab=DVDD}
N 490 -90 520 -90 {lab=#net5}
N 490 90 520 90 {lab=#net6}
N 840 -90 870 -90 {lab=#net7}
N 840 90 870 90 {lab=Q}
N -150 -90 -120 -90 {lab=#net1}
N -150 90 -120 90 {lab=#net3}
N 200 -90 230 -90 {lab=#net4}
N -20 -70 -20 -40 {lab=DGND}
N -140 -40 -20 -40 {lab=DGND}
N -20 -140 -20 -110 {lab=DVDD}
N -120 -140 -20 -140 {lab=DVDD}
N -140 -140 -120 -140 {lab=DVDD}
N -20 50 -20 70 {lab=DVDD}
N -90 50 -20 50 {lab=DVDD}
N -20 110 -20 130 {lab=DGND}
N -90 130 -20 130 {lab=DGND}
N 620 110 620 130 {lab=DGND}
N 520 130 620 130 {lab=DGND}
N 620 50 620 70 {lab=DVDD}
N 520 50 620 50 {lab=DVDD}
N 620 -70 620 -40 {lab=DGND}
N 520 -40 620 -40 {lab=DGND}
N 620 -140 620 -110 {lab=DVDD}
N 550 -140 620 -140 {lab=DVDD}
C {sky130_fd_pr/nfet_01v8.sym} -20 -50 3 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -20 -130 3 1 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 130 3 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -20 50 3 1 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 620 -50 3 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 620 -130 3 1 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 620 130 3 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 620 50 3 1 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -310 90 0 0 {name=p1 lab=D}
C {opin.sym} 900 90 0 0 {name=p2 lab=Q}
C {lab_pin.sym} -230 -30 0 0 {name=p10 sig_type=std_logic lab=DGND}
C {lab_pin.sym} -40 0 0 0 {name=p17 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 620 -180 0 0 {name=p18 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 620 170 0 0 {name=p19 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -20 -180 0 0 {name=p20 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} -20 170 0 0 {name=p21 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 600 0 0 0 {name=p22 sig_type=std_logic lab=CLKB}
C {ipin.sym} -310 50 0 0 {name=p23 lab=CLK}
C {ipin.sym} -310 20 0 0 {name=p24 lab=CLKB}
C {iopin.sym} 120 110 1 0 {name=p25 lab=DVDD}
C {iopin.sym} 160 110 1 0 {name=p26 lab=DGND}
C {opin.sym} 690 160 1 0 {name=p27 lab=QB}
C {inv.sym} -120 -90 0 0 {name=x1}
C {lab_pin.sym} -230 -150 0 0 {name=p28 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} -230 150 0 0 {name=p3 sig_type=std_logic lab=DGND}
C {inv.sym} -120 90 0 0 {name=x2}
C {lab_pin.sym} -230 30 0 0 {name=p4 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 120 -30 0 0 {name=p5 sig_type=std_logic lab=DGND}
C {inv.sym} 230 -90 0 0 {name=x3}
C {lab_pin.sym} 120 -150 0 0 {name=p6 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 410 -30 0 0 {name=p7 sig_type=std_logic lab=DGND}
C {inv.sym} 520 -90 0 0 {name=x4}
C {lab_pin.sym} 410 -150 0 0 {name=p8 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 410 150 0 0 {name=p9 sig_type=std_logic lab=DGND}
C {inv.sym} 520 90 0 0 {name=x5}
C {lab_pin.sym} 410 30 0 0 {name=p11 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 760 150 0 0 {name=p12 sig_type=std_logic lab=DGND}
C {inv.sym} 870 90 0 0 {name=x6}
C {lab_pin.sym} 760 30 0 0 {name=p13 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 760 -30 0 0 {name=p14 sig_type=std_logic lab=DGND}
C {inv.sym} 870 -90 0 0 {name=x7}
C {lab_pin.sym} 760 -150 0 0 {name=p15 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} -140 -40 0 0 {name=p16 sig_type=std_logic lab=DGND
}
C {lab_pin.sym} -140 -140 0 0 {name=p29 sig_type=std_logic lab=DVDD
}
C {lab_pin.sym} -90 130 0 0 {name=p30 sig_type=std_logic lab=DGND
}
C {lab_pin.sym} -90 50 0 0 {name=p31 sig_type=std_logic lab=DVDD
}
C {lab_pin.sym} 520 130 0 0 {name=p32 sig_type=std_logic lab=DGND
}
C {lab_pin.sym} 520 50 0 0 {name=p33 sig_type=std_logic lab=DVDD
}
C {lab_pin.sym} 520 -40 0 0 {name=p34 sig_type=std_logic lab=DGND
}
C {lab_pin.sym} 550 -140 0 0 {name=p35 sig_type=std_logic lab=DVDD
}
