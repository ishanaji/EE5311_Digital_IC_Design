v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -80 90 -40 {lab=Vin}
N 90 20 90 40 {lab=0}
N -120 150 -120 180 {lab=0}
N -120 60 -120 90 {lab=VDD}
N 250 40 255 10 {lab=0}
C {code_shown.sym} 0 150 0 0 {name=sim only_toplevel=false 
value=".include nand2_extracted.spice
.control
tran 0.1p 1000p
meas tran thl trig v(Vin) val=0.9 rise=1 targ v(Vout) val=0.9 fall=1
meas tran tlh trig v(Vin) val=0.9 fall=1 targ v(Vout) val=0.9 rise=1
let delay = ($&thl + $&tlh) / 2
echo delay : $&delay
plot v(Vout) v(Vin)
.endc"}
C {vsource.sym} 90 -10 0 0 {name=Vin1 value="PULSE(0 1.8 1ps 5ps 5ps 500ps 2000ps)" savecurrent=false}
C {gnd.sym} 90 40 0 0 {name=l4 lab=0}
C {vsource.sym} -120 120 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} -120 180 0 0 {name=l5 lab=0}
C {lab_pin.sym} 90 -80 0 0 {name=p7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -120 60 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} -120 -100 0 0 {name=CORNER only_toplevel=false corner=tt}
C {nand2.sym} 210 70 0 0 {name=x3}
C {lab_pin.sym} 250 -130 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 250 40 0 0 {name=l1 lab=0}
C {lab_pin.sym} 240 -70 1 0 {name=p2 sig_type=std_logic lab=Vout}
