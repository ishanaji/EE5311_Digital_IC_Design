v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -300 -30 -270 -30 {lab=Vout}
N -470 -30 -420 -30 {lab=Vin}
N -320 -30 -300 -30 {lab=Vout}
N -380 60 -380 80 {lab=0}
N -470 80 -380 80 {lab=0}
N -470 -30 -470 20 {lab=Vin}
N -270 -30 -230 -30 {lab=Vout}
C {vsource.sym} -470 50 0 0 {name=V1 value="PULSE(0 \{VDDval\} 0ps 5ps 5ps 300ps 600ps)" savecurrent=false}
C {gnd.sym} -470 80 0 0 {name=l1 lab=0}
C {vsource.sym} -570 0 0 0 {name=V2 value=\{VDDval\} savecurrent=false}
C {gnd.sym} -570 30 0 0 {name=l3 lab=0}
C {vdd.sym} -570 -30 0 0 {name=l4 lab=VDD}
C {code_shown.sym} -960 -170 0 0 {name=s1 only_toplevel=false value="
.param Width_p = 0.84
.param VDDval = 1.8
.save all
.control
let N = 9
let index = 0
let vddvec = vector(N)
let tpvec = vector(N)
let edpvec = vector(N)
let tp_ana_vec = vector(N)
let edp_ana_vec = vector(N)
let CL = 3.8e-15
let Vtn = 0.7
let Vtp = 0.7
let WnbyL = 0.42 / 0.15
let WpbyL = 0.84 / 0.15
let Kn = 0.00010425
let Kp = 0.00003672
let EcnL = 0.96
let EcpL = 1.00
while index < N
   let vddv = 1.0 + (index * 0.1)
   let v50 = vddv / 2
   alterparam VDDval = $&vddv
   reset
   tran 1p 600p
   meas tran thl trig v(Vin) val=$&v50 rise=1 targ v(Vout) val=$&v50 fall=1
   meas tran tlh trig v(Vin) val=$&v50 fall=1 targ v(Vout) val=$&v50 rise=1
   meas tran iinteg integ i(vmeas)
   let const.vddvec[index] = vddv
   let const.tpvec[index] = ($&thl + $&tlh) / 2
   let const.edpvec[index] = $&iinteg * vddv * const.tpvec[index]
   let tphl_ana = 0.5 * (CL * vddv * (EcnL + vddv - Vtn)) / (Kn * WnbyL * ((vddv - Vtn)^2) * EcnL)
   let tplh_ana = 0.5 * (CL * vddv * (EcpL + vddv - Vtp)) / (Kp * WpbyL * ((vddv - Vtp)^2) * EcpL)
   let tp_ana = (tphl_ana + tplh_ana) / 2
   let const.tp_ana_vec[index] = tp_ana
   let const.edp_ana_vec[index] = CL * (vddv^2) * tp_ana
   let index = index + 1
end
setplot const
print vddvec tpvec tp_ana_vec edpvec edp_ana_vec > edp_vdd_data.txt
plot tpvec tp_ana_vec vs vddvec
plot edpvec edp_ana_vec vs vddvec
.endc
.end"}
C {sky130_fd_pr/corner.sym} -630 140 0 0 {name=CORNER only_toplevel=false corner=tt}
C {inv_gnd.sym} -270 -30 0 0 {name=x1}
C {ammeter.sym} -380 30 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {lab_wire.sym} -460 -30 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_wire.sym} -300 -30 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {q1.sym} -40 -30 0 0 {name=x2}
