v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 1200 520 1200 {lab=Vin}
N 440 1200 440 1240 {lab=Vin}
N 440 1300 440 1320 {lab=GND}
N 960 1110 960 1140 {lab=GND}
N 960 1020 960 1050 {lab=VDD}
N 690 1200 720 1200 {lab=Vout}
N 720 1200 750 1200 {lab=Vout}
C {q1.sym} 710 1200 0 0 {name=x1}
C {q1.sym} 940 1200 0 0 {name=x2}
C {vsource.sym} 440 1270 0 0 {name=Vin1 value="PULSE(0 1.8 10ps 5ps 5ps 100ps 250ps)" savecurrent=false}
C {gnd.sym} 440 1320 0 0 {name=l1 lab=GND}
C {vsource.sym} 960 1080 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} 960 1140 0 0 {name=l2 lab=GND}
C {vdd.sym} 960 1020 0 0 {name=l3 lab=VDD}
C {sky130_fd_pr/corner.sym} 340 1030 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 1070 1200 0 0 {name=sim only_toplevel=false 
value=".param width_p = 0.42
.control
foreach wp 0.42 0.84 1.26
  alterparam width_p = $wp
  reset
  tran 0.1p 250p

  meas tran thl trig v(Vin) val=0.9 rise=1 targ v(Vout) val=0.9 fall=1
  meas tran tlh trig v(Vin) val=0.9 fall=1 targ v(Vout) val=0.9 rise=1
  let delay = ($&thl + $&tlh) / 2
  echo w : $wp delay : $&delay

  plot v(Vout) v(Vin) title 'Wp = $wp um'
end

* wp=0.42 -> tran1, wp=0.84 -> tran2, wp=1.26 -> tran3 (loop order)
plot tran1.v(Vout) tran2.v(Vout) tran3.v(Vout) xlabel 'time' ylabel 'Vout' title 'Vout vs Wp'
.endc"}
C {lab_pin.sym} 440 1200 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 720 1200 1 0 {name=p2 sig_type=std_logic lab=Vout}
