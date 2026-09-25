v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -40 -30 -30 {lab=VDD}
N -30 30 -30 40 {lab=GND}
N 70 -40 70 -30 {lab=Vin}
N 70 30 70 40 {lab=GND}
N 220 20 220 40 {lab=GND}
N 220 -60 220 -40 {lab=VDD}
N 170 -10 180 -10 {lab=Vin}
C {vsource.sym} -30 0 0 0 {name=Vdd1 value=1.8 savecurrent=false}
C {vdd.sym} -30 -40 0 0 {name=l1 lab=VDD}
C {gnd.sym} -30 40 0 0 {name=l2 lab=GND}
C {vsource.sym} 70 0 0 0 {name=Vin1 value=1.8 savecurrent=false}
C {vdd.sym} 70 -40 0 0 {name=Vin2 lab=Vin}
C {gnd.sym} 70 40 0 0 {name=Vin3 lab=GND}
C {sky130_fd_pr/nfet3_01v8.sym} 200 -10 0 0 {name=M1
W=\{Width\}
L=\{Length\}
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
C {gnd.sym} 220 40 0 0 {name=l3 lab=GND}
C {vdd.sym} 220 -60 0 0 {name=l4 lab=VDD}
C {lab_pin.sym} 170 -10 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {sky130_fd_pr/corner.sym} 10 120 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code_shown.sym} 420 -40 0 0 {name=sim
only_toplevel=false
value=".param Width = 0.42
.param Length = 0.15
.dc Vdd1 0 1.8 0.01
.control
    let index = 1
    set cache = ( )
    while index <= 10
        let newW = index * 0.42
        let newL = index * 0.15
        alterparam Width = $&newW
        alterparam Length = $&newL
        reset
        run
        set cache = ( $cache dc\{$&index\}.i(VDD1)*-1 )
        let index = index + 1
    end
    plot $cache
.endc"}
