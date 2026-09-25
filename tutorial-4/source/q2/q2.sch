v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 880 -50 880 -30 {lab=0}
N 880 -140 880 -110 {lab=DVDD}
N 300 30 350 30 {lab=Vout}
N 300 30 300 190 {lab=Vout}
N 300 190 730 190 {lab=Vout}
N 730 30 730 190 {lab=Vout}
N 650 30 730 30 {lab=Vout}
N 500 -80 500 -40 {lab=DVDD}
N 500 90 500 110 {lab=0}
C {code_shown.sym} -250 -350 0 0 {name=sim only_toplevel=false 
value="* 7-stage ring oscillator - Question 2(b): freq vs VDD
.include osc_extracted.spice
.param width_p = 0.84
.param VDDVAL  = 1.8
.ic v(Vout)=0
.saveall

.control
  let n = 9                     ; number of VDD points
  let vdd_arr    = unitvec(n)
  let freq_arr   = unitvec(n)
  let period_arr = unitvec(n)
  let idx = 0

  foreach vdd 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8
    alterparam VDDVAL = $vdd
    reset
    tran 1p 100n uic

    meas tran t_r1 when v(Vout)=0.4 rise=3
    meas tran t_r2 when v(Vout)=0.4 rise=4
    let period = t_r2 - t_r1
    let freq   = 1/period

    let vdd_arr[$&idx]    = $vdd
    let freq_arr[$&idx]   = freq
    let period_arr[$&idx] = period
    echo Period: $&period, Freq: $&freq

    let idx = idx + 1
  end

  * plot inside ngspice
  plot freq_arr vs vdd_arr
  plot period_arr vs vdd_arr

  * also dump to disk for python/excel post-processing
  wrdata freq_vs_vdd.txt   vdd_arr freq_arr
  wrdata period_vs_vdd.txt vdd_arr period_arr
.endc"}
C {vsource.sym} 880 -80 0 0 {name=Vdd1 value=\{VDDVAL\} savecurrent=false}
C {gnd.sym} 880 -30 0 0 {name=l1 lab=0}
C {vdd.sym} 880 -140 0 0 {name=l2 lab=DVDD}
C {sky130_fd_pr/corner.sym} 570 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {osc.sym} 500 30 0 0 {name=x1}
C {lab_pin.sym} 730 30 2 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 500 -80 0 0 {name=p2 sig_type=std_logic lab=DVDD}
C {gnd.sym} 500 110 0 0 {name=l3 lab=0}
