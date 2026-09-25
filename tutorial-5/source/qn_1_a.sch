v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -90 20 -90 {lab=Vout}
N -190 -100 -190 -60 {lab=Vin}
N -190 0 -190 20 {lab=0}
N -400 130 -400 160 {lab=0}
N -400 40 -400 70 {lab=VDD}
N -190 -100 -110 -100 {lab=Vin}
N 20 -90 140 -90 {lab=Vout}
N 60 -150 60 -90 {lab=Vout}
C {nand.sym} 40 -90 0 0 {name=x1}
C {nand.sym} 290 -80 0 0 {name=x2}
C {gnd.sym} -60 -40 0 0 {name=l1 lab=0}
C {gnd.sym} 190 -30 0 0 {name=l2 lab=0}
C {lab_wire.sym} -60 -130 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -60 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -110 -70 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -150 2 0 {name=p6 sig_type=std_logic lab=Vout
}
C {code_shown.sym} -280 130 0 0 {name=sim only_toplevel=false 
value=".include nand_extracted.spice
.control
tran 0.1p 1000p
meas tran thl trig v(Vin) val=0.9 rise=1 targ v(Vout) val=0.9 fall=1
meas tran tlh trig v(Vin) val=0.9 fall=1 targ v(Vout) val=0.9 rise=1
let delay = ($&thl + $&tlh) / 2
echo delay : $&delay
plot v(Vout) v(Vin)
.endc"}
C {vsource.sym} -190 -30 0 0 {name=Vin1 value="PULSE(0 1.8 1ps 5ps 5ps 500ps 2000ps)" savecurrent=false}
C {gnd.sym} -190 20 0 0 {name=l4 lab=0}
C {vsource.sym} -400 100 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} -400 160 0 0 {name=l5 lab=0}
C {lab_pin.sym} -190 -100 0 0 {name=p7 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -400 40 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} -400 -120 0 0 {name=CORNER only_toplevel=false corner=tt}
