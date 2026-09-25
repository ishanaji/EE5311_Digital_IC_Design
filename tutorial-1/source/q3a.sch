v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 40 180 40 {lab=Vout}
N 180 100 180 120 {lab=0}
N -40 40 50 40 {lab=Vin}
N -130 100 -130 120 {lab=0}
N -130 40 -40 40 {lab=Vin}
N 80 80 80 110 {lab=#net1}
N 80 170 80 190 {lab=0}
N 180 0 180 40 {lab=Vout}
N -130 0 -130 40 {lab=Vin}
C {sky130_fd_pr/nfet3_01v8.sym} 80 60 3 0 {name=M1
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
C {capa.sym} 180 70 0 0 {name=C1
m=1
value=100f
ic = 0
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 180 120 0 0 {name=l1 lab=0}
C {vsource.sym} -130 70 0 0 {name=Vstep value="PULSE(0 1.8 1n 10p 10p)" savecurrent=false}
C {gnd.sym} -130 120 0 0 {name=l2 lab=0}
C {vsource.sym} 80 140 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} 80 190 0 0 {name=l3 lab=0}
C {code_shown.sym} 290 30 0 0 {name=sim only_toplevel=false value=".control
  tran 1n 120n
  plot v(Vin) v(Vout)
  meas tran vout_20ns FIND v(Vout) AT=20n
  meas tran vout_100ns FIND v(Vout) AT=100n
.endc"}
C {lab_pin.sym} 180 0 0 0 {name=p1 sig_type=std_logic lab=Vout
}
C {lab_pin.sym} -130 0 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} 260 200 0 0 {name=CORNER only_toplevel=false corner=tt}
