v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -830 80 -830 100 {lab=0}
N -830 -10 -830 20 {lab=VDD}
N -740 80 -740 100 {lab=0}
N -740 -10 -740 20 {lab=CLK}
N -740 240 -740 260 {lab=0}
N -740 150 -740 180 {lab=CLKB}
N -480 240 -480 260 {lab=0}
N -480 150 -480 180 {lab=D}
N -380 90 -380 110 {lab=0}
N -380 -100 -380 -80 {lab=VDD}
N -310 -20 -290 -20 {lab=Q}
N -290 -20 -230 -20 {lab=Q}
C {vsource.sym} -830 50 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {vsource.sym} -740 50 0 0 {name=Vclk1 value="PULSE(0 1.8 10n 5p 5p 9.99n 20n)" savecurrent=false}
C {gnd.sym} -830 100 0 0 {name=l1 lab=0}
C {gnd.sym} -740 100 0 0 {name=l2 lab=0}
C {vsource.sym} -740 210 0 0 {name=Vclkb1 value="PULSE(1.8 0 10n 5p 5p 9.99n 20n)" savecurrent=false}
C {gnd.sym} -740 260 0 0 {name=l3 lab=0}
C {lab_wire.sym} -830 -10 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -740 -10 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -740 150 0 0 {name=p7 sig_type=std_logic lab=CLKB}
C {vsource.sym} -480 210 0 0 {name=Vin1 value="PULSE(1.8 0 \{t_start\} 5p 5p 19.99n 30n)" savecurrent=false}
C {gnd.sym} -480 260 0 0 {name=l7 lab=0}
C {lab_wire.sym} -480 150 0 0 {name=p10 sig_type=std_logic lab=D}
C {pet_dff.sym} -380 10 0 0 {name=x1}
C {lab_wire.sym} -450 30 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -450 50 0 0 {name=p4 sig_type=std_logic lab=CLKB}
C {lab_wire.sym} -450 -30 0 0 {name=p5 sig_type=std_logic lab=D}
C {lab_wire.sym} -380 -100 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {gnd.sym} -380 110 0 0 {name=l4 lab=0}
C {lab_wire.sym} -270 -20 0 1 {name=p8 sig_type=std_logic lab=Q}
C {lab_wire.sym} -190 -60 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/corner.sym} -630 -110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 10 -150 0 0 {name=sim only_toplevel=false value="
.ic v(Q) = 1.8
.param t_start=9.7n
.control
let N=38
let index=0
let tdq_vec = vector(N)
let tdc_vec = vector(N)
let tcq_vec = vector(N)
let ts_vec = vector(N)
while index < N
	let ts = 9.7n + ((index)*5p)
	alterparam t_start = $&ts
	reset
	tran 0.01n 20n
	meas tran tdq trig v(D) val=0.9 fall=1 targ v(Q) val=0.9 fall=1
	meas tran tdc trig v(D) val=0.9 fall=1 targ v(CLK) val=0.9 rise=1
	meas tran tcq trig v(CLK) val=0.9 rise=1 targ v(Q) val=0.9 fall=1
	let tdq_vec[index] = $&tdq
	let tdc_vec[index] = $&tdc
	let tcq_vec[index] = $&tcq
	let ts_vec[index] = $&ts
	let index = index + 1
end
plot tran1.v(CLK) tran1.v(D) tran1.v(Q)
plot tran19.v(CLK) tran19.v(D) tran19.v(Q)
plot tran29.v(CLK) tran29.v(D) tran29.v(Q)
plot tdq_vec vs ts_vec
plot tdc_vec vs ts_vec
plot tcq_vec vs ts_vec
print tdq_vec tdc_vec tcq_vec > time_data_fall.txt
.endc"}
C {inv.sym} -80 -20 0 0 {name=x2}
C {gnd.sym} -190 20 0 0 {name=l6 lab=0}
