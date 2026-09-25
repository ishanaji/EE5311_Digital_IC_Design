v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -360 -190 -360 -180 {lab=0}
N -270 -190 -270 -180 {lab=0}
N -270 -280 -270 -250 {lab=Vin}
N -360 -280 -360 -250 {lab=VDD}
N -120 -290 -120 -250 {lab=VDD}
N -170 -220 -160 -220 {lab=Vin}
N -170 -220 -170 -190 {lab=Vin}
N -170 -190 -120 -190 {lab=Vin}
C {sky130_fd_pr/corner.sym} -420 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 10 -140 0 0 {name=sim only_toplevel=false 
value=".control
save all
dc Vin1 0 1.8 0.01
let mu = 0.008
let WbyL = 0.42/0.15
let Cox = 0.00834
let Vth = 0.7
let vsat = 8e4

let Vsg = v(VDD)-v(Vin)
let Vsd = Vsg

let lambdan = 0.2
let EcL = 2*vsat * 0.15e-6/mu
let Vgt = max(Vsg - Vth, 0)

let Vdsat = (Vgt)*EcL/(Vgt + EcL)
let Vmin = min(Vsg, Vdsat)
let idfit = 0.5*mu*Cox*WbyL*EcL*(Vgt^2)*(1 + lambdan * Vsd)/(Vgt + EcL)
set filetype=ascii
wrdata pmos_ids_vgs.txt -I(VDD) idfit
plot -I(VDD) idfit
.endc"}
C {sky130_fd_pr/pfet3_01v8.sym} -140 -220 0 0 {name=M1
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
C {vsource.sym} -270 -220 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {vsource.sym} -360 -220 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -360 -180 0 0 {name=l1 lab=0}
C {gnd.sym} -270 -180 0 0 {name=l2 lab=0}
C {lab_pin.sym} -270 -280 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -360 -280 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -120 -290 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -170 -220 0 0 {name=p4 sig_type=std_logic lab=Vin}
