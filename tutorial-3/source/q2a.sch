v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 20 30 20 {lab=#net1}
N 200 20 230 20 {lab=#net2}
N 400 20 430 20 {lab=#net3}
N 600 20 640 20 {lab=#net4}
N 810 20 840 20 {lab=#net5}
N 1010 20 1050 20 {lab=#net6}
N 1220 20 1220 180 {lab=Vout}
N -170 180 1220 180 {lab=Vout}
N -170 20 -170 180 {lab=Vout}
N 880 -250 880 -230 {lab=0}
N 880 -340 880 -310 {lab=VDD}
C {q1.sym} 20 20 0 0 {name=x1}
C {q1.sym} 220 20 0 0 {name=x2}
C {q1.sym} 420 20 0 0 {name=x3}
C {q1.sym} 620 20 0 0 {name=x4}
C {q1.sym} 830 20 0 0 {name=x5}
C {q1.sym} 1030 20 0 0 {name=x6}
C {q1.sym} 1240 20 0 0 {name=x7}
C {lab_pin.sym} 1220 20 1 0 {name=p1 sig_type=std_logic lab=Vout}
C {code_shown.sym} 220 -340 0 0 {name=sim only_toplevel=false 
value="* 7-stage ring oscillator - Question 2(a), VDD = 1.8V
.param width_p = 0.84
.ic v(Vout)=0

.control
tran 1p 5n uic

meas tran t_r1 when v(Vout)=0.9 rise=3
meas tran t_r2 when v(Vout)=0.9 rise=4
let period = t_r2 - t_r1
let freq   = 1/period
echo Period = $&period s
echo Freq   = $&freq Hz

plot v(Vout)
.endc"}
C {vsource.sym} 880 -280 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {gnd.sym} 880 -230 0 0 {name=l1 lab=0}
C {vdd.sym} 880 -340 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/corner.sym} -50 -280 0 0 {name=CORNER only_toplevel=false corner=tt}
