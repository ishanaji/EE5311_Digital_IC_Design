v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -130 -160 -130 -140 {lab=Vin}
N -200 -160 -130 -160 {lab=Vin}
N -200 -160 -200 -110 {lab=Vin}
N -200 -110 -170 -110 {lab=Vin}
N -200 -180 -200 -160 {lab=Vin}
N -240 -180 -200 -180 {lab=Vin}
N -130 -80 -130 -60.2442741394043 {lab=0}
N -130.5030250549316 -60.2442741394043 -130 -60.2442741394043 {lab=0}
N -270 -110 -270 -100 {lab=Vin}
N -270 -110 -200 -110 {lab=Vin}
N -200 -110 -170 -110 {lab=Vin}
N -130 -140 -60 -140 {lab=Vin}
N -170 -110 -100 -110 {lab=Vin}
N -130 -80 -60 -80 {lab=0}
N -270 -40 -270 -20.2442741394043 {lab=0}
N -270 -20.2442741394043 -260.5030250549316 -20.2442741394043 {lab=0}
C {gnd.sym} -130.5030250549316 -60.2442741394043 0 0 {name=l1 lab=0}
C {vsource.sym} -270 -70 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {gnd.sym} -260.5030250549316 -20.2442741394043 0 0 {name=l2 lab=0}
C {sky130_fd_pr/nfet3_01v8.sym} -80 -110 0 0 {name=M2
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
C {sky130_fd_pr/corner.sym} -420 -130 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 10 -140 0 0 {name=sim only_toplevel=false 
value=".control
save all
dc Vin1 0 1.8 0.01
let mu = 0.025
let WbyL = 0.42/0.15
let Cox = 0.00834
let Vth = 0.7
let vsat = 8e4
let Vgs = v(Vin)
let Vds = Vgs
let lambdan = 0.2
let EcL = 2*vsat * 0.15e-6/mu
let Vgt = max(Vgs - Vth, 0)
let Vdsat = (Vgt)*EcL/(Vgt + EcL)
let Vmin = min(Vgs, Vdsat)
let idfit = 0.5*mu*Cox*WbyL*EcL*(Vgt^2)*(1 + lambdan * Vds)/(Vgt + EcL)

let I_sim = -i(Vin1)
let error_pct = abs((I_sim - idfit) / (I_sim + 1e-15)) * 100
meas dc mean_percentage_error AVG error_pct FROM=0.7 TO=1.8

set filetype=ascii
wrdata nmos_ids_vgs.txt -I(Vin1) idfit
plot -I(Vin1) idfit
.endc"}
C {lab_pin.sym} -240 -180 0 0 {name=Vin sig_type=std_logic lab=Vin}
