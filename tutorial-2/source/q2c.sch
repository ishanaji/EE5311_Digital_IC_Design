v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 810 -350 810 -330 {lab=Vin}
N 740 -350 740 -330 {lab=VDD}
N 350 -220 350 -200 {lab=Vout}
N 350 -300 350 -280 {lab=VDD}
N 350 -210 440 -210 {lab=Vout}
C {sky130_fd_pr/corner.sym} 350 -40 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 580 -180 0 0 {name=sim only_toplevel=false value=".control
op
let ids = I(V2)*-1
let power = 1.8 * ids
print ids power
.endc"
}
C {gnd.sym} 810 -270 0 0 {name=l2 lab=0}
C {vsource.sym} 810 -300 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} 810 -340 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/nfet3_01v8.sym} 330 -170 0 0 {name=M1
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
C {sky130_fd_pr/pfet3_01v8.sym} 330 -250 0 0 {name=M2
W=0.832
L=0.60
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
C {gnd.sym} 740 -270 0 0 {name=l1 lab=0}
C {vsource.sym} 740 -300 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_wire.sym} 740 -340 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 350 -140 0 0 {name=l3 lab=0}
C {lab_wire.sym} 310 -170 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 350 -300 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 310 -250 0 0 {name=l4 lab=0}
C {lab_wire.sym} 440 -210 0 0 {name=p5 sig_type=std_logic lab=Vout}
