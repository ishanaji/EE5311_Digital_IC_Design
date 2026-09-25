v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 1200 440 1240 {lab=Vin}
N 440 1300 440 1320 {lab=GND}
N 960 1110 960 1140 {lab=GND}
N 960 1020 960 1050 {lab=DVDD}
N 690 1200 720 1200 {lab=Vout}
N 440 1200 520 1200 {lab=Vin}
N 660 1200 690 1200 {lab=Vout}
N 720 1200 750 1200 {lab=Vout}
N 580 1080 580 1120 {lab=DVDD}
N 790 1090 790 1130 {lab=DVDD}
N 560 1130 580 1130 {lab=DVDD}
N 580 1120 580 1130 {lab=DVDD}
N 610 1200 660 1200 {lab=Vout}
C {vsource.sym} 440 1270 0 0 {name=Vin1 value="PULSE(0 1.8 10ps 5ps 5ps 100ps 250ps)" savecurrent=false}
C {gnd.sym} 440 1320 0 0 {name=l1 lab=GND}
C {vsource.sym} 960 1080 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} 960 1140 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} 340 1030 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 510 1340 0 0 {name=sim only_toplevel=false 
value=".include inv_extracted.spice
.control
tran 0.1p 250p
meas tran thl trig v(Vin) val=0.9 rise=1 targ v(Vout) val=0.9 fall=1
meas tran tlh trig v(Vin) val=0.9 fall=1 targ v(Vout) val=0.9 rise=1
let delay = ($&thl + $&tlh) / 2
echo delay : $&delay
plot v(Vout) v(Vin)
.endc"}
C {lab_pin.sym} 440 1200 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 720 1200 1 0 {name=p2 sig_type=std_logic lab=Vout}
C {inv.sym} 670 1220 0 0 {name=x1}
C {inv.sym} 900 1220 0 0 {name=x2}
C {lab_pin.sym} 960 1020 0 0 {name=p4 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 580 1080 0 0 {name=p5 sig_type=std_logic lab=DVDD}
C {lab_pin.sym} 790 1090 0 0 {name=p6 sig_type=std_logic lab=DVDD}
C {gnd.sym} 570 1250 0 0 {name=l3 lab=0}
C {gnd.sym} 800 1250 0 0 {name=l4 lab=0}
