v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 -40 50 -40 {lab=Vin}
N -0 -40 -0 70 {lab=Vin}
N -0 70 50 70 {lab=Vin}
N 90 -130 90 -70 {lab=VDD}
N 90 100 90 130 {lab=GND}
N 320 -60 320 -40 {lab=GND}
N 320 -140 320 -120 {lab=VDD}
N 90 -10 90 40 {lab=Vout}
N 90 20 230 20 {lab=Vout}
N -80 20 -0 20 {lab=Vin}
N -80 20 -80 30 {lab=Vin}
N -80 110 -80 140 {lab=GND}
N -80 30 -80 50 {lab=Vin}
C {sky130_fd_pr/pfet3_01v8.sym} 70 -40 0 0 {name=M1
W=0.84
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
C {sky130_fd_pr/nfet3_01v8.sym} 70 70 0 0 {name=M2
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
C {vdd.sym} 90 -130 0 0 {name=l1 lab=VDD}
C {gnd.sym} 90 130 0 0 {name=l2 lab=GND}
C {vsource.sym} 320 -90 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} 320 -40 0 0 {name=l3 lab=GND}
C {vdd.sym} 320 -140 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 230 20 0 1 {name=p1 sig_type=std_logic lab=Vout
}
C {vsource.sym} -80 80 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -80 140 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/corner.sym} -140 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 450 -30 0 0 {name=sim only_toplevel=false 
value=".control
dc Vin1 0 1.8 0.01
plot v(Vout) v(Vin)
meas dc vin_at_cross  FIND v(Vin) WHEN v(Vout)=v(Vin)
meas dc vout_at_cross FIND v(Vout) WHEN v(Vout)=v(Vin)
.endc"}
C {lab_pin.sym} -80 20 0 0 {name=p2 sig_type=std_logic lab=Vin}
