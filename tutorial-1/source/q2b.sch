v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -40 -30 -30 {lab=VDD}
N -30 30 -30 40 {lab=GND}
N 70 -40 70 -30 {lab=Vin}
N 70 30 70 40 {lab=GND}
N 170 -10 180 -10 {lab=Vin}
N 220 -60 220 -40 {lab=VDD}
N 220 20 220 30 {lab=#net1}
N 220 90 220 110 {lab=0}
C {vsource.sym} -30 0 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {vdd.sym} -30 -40 0 0 {name=l1 lab=VDD}
C {gnd.sym} -30 40 0 0 {name=l2 lab=GND}
C {vsource.sym} 70 0 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {vdd.sym} 70 -40 0 0 {name=Vin2 lab=Vin}
C {gnd.sym} 70 40 0 0 {name=Vin3 lab=GND}
C {vdd.sym} 220 -60 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 170 -10 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} 10 120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 420 -40 0 0 {name=sim
only_toplevel=false
value=".control
let Vsg = 1.8 - 0.6
repeat 4
  alter Vin1 $&Vsg
  dc Vd1 0 1.8 0.02
  let Vsg = Vsg - 0.4
end
plot dc1.I(Vdd1)*-1 dc2.I(Vdd1)*-1 dc3.I(vdd1)*-1 dc4.I(Vdd1)*-1
set filetype=ascii
wrdata nmos_ids_vds.txt dc1.I(Vdd1)*-1 dc2.I(Vdd1)*-1 dc3.I(vdd1)*-1 dc4.I(Vdd1)*-1
.endc"}
C {sky130_fd_pr/pfet3_01v8.sym} 200 -10 0 0 {name=M1
W=0.42
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
C {vsource.sym} 220 60 0 0 {name=Vd1 value=1.8 savecurrent=false}
C {gnd.sym} 220 110 0 0 {name=l3 lab=0}
