v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 650 590 650 {lab=in}
N 540 650 540 760 {lab=in}
N 540 760 590 760 {lab=in}
N 630 560 630 620 {lab=DVDD}
N 630 790 630 820 {lab=DGND}
N 630 680 630 730 {lab=#net1}
N 630 700 720 700 {lab=#net1}
N 780 650 830 650 {lab=#net1}
N 780 650 780 760 {lab=#net1}
N 780 760 830 760 {lab=#net1}
N 870 560 870 620 {lab=DVDD}
N 870 790 870 820 {lab=DGND}
N 870 680 870 730 {lab=#net2}
N 870 700 960 700 {lab=#net2}
N 1030 650 1080 650 {lab=#net2}
N 1030 650 1030 760 {lab=#net2}
N 1030 760 1080 760 {lab=#net2}
N 1120 560 1120 620 {lab=DVDD}
N 1120 790 1120 820 {lab=DGND}
N 1120 680 1120 730 {lab=#net3}
N 1120 700 1210 700 {lab=#net3}
N 1270 650 1320 650 {lab=#net3}
N 1270 650 1270 760 {lab=#net3}
N 1270 760 1320 760 {lab=#net3}
N 1360 560 1360 620 {lab=DVDD}
N 1360 790 1360 820 {lab=DGND}
N 1360 680 1360 730 {lab=#net4}
N 1360 700 1450 700 {lab=#net4}
N 1510 650 1560 650 {lab=#net4}
N 1510 650 1510 760 {lab=#net4}
N 1510 760 1560 760 {lab=#net4}
N 1600 560 1600 620 {lab=DVDD}
N 1600 790 1600 820 {lab=DGND}
N 1600 680 1600 730 {lab=#net5}
N 1600 700 1690 700 {lab=#net5}
N 1750 650 1800 650 {lab=#net5}
N 1750 650 1750 760 {lab=#net5}
N 1750 760 1800 760 {lab=#net5}
N 1840 560 1840 620 {lab=DVDD}
N 1840 790 1840 820 {lab=DGND}
N 1840 680 1840 730 {lab=#net6}
N 1840 700 1930 700 {lab=#net6}
N 2000 650 2050 650 {lab=#net6}
N 2000 650 2000 760 {lab=#net6}
N 2000 760 2050 760 {lab=#net6}
N 2090 560 2090 620 {lab=DVDD}
N 2090 790 2090 820 {lab=DGND}
N 2090 680 2090 730 {lab=out}
N 2090 700 2180 700 {lab=out}
N 720 700 780 700 {lab=#net1}
N 960 700 1030 700 {lab=#net2}
N 1210 700 1270 700 {lab=#net3}
N 1450 700 1510 700 {lab=#net4}
N 1690 700 1750 700 {lab=#net5}
N 1930 700 2000 700 {lab=#net6}
N 870 820 2090 820 {lab=DGND}
N 630 820 870 820 {lab=DGND}
N 630 560 2090 560 {lab=DVDD}
C {sky130_fd_pr/pfet3_01v8.sym} 610 650 0 0 {name=M1
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 610 760 0 0 {name=M2
W=0.42
L=0.15
body=DGND
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
C {ipin.sym} 540 700 0 0 {name=p5 lab=in}
C {iopin.sym} 630 560 3 0 {name=p7 lab=DVDD}
C {iopin.sym} 630 820 1 0 {name=p8 lab=DGND}
C {sky130_fd_pr/pfet3_01v8.sym} 850 650 0 0 {name=M3
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 850 760 0 0 {name=M4
W=0.42
L=0.15
body=DGND
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
C {sky130_fd_pr/pfet3_01v8.sym} 1100 650 0 0 {name=M5
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1100 760 0 0 {name=M6
W=0.42
L=0.15
body=DGND
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
C {sky130_fd_pr/pfet3_01v8.sym} 1340 650 0 0 {name=M7
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1340 760 0 0 {name=M8
W=0.42
L=0.15
body=DGND
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
C {sky130_fd_pr/pfet3_01v8.sym} 1580 650 0 0 {name=M9
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1580 760 0 0 {name=M10
W=0.42
L=0.15
body=DGND
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
C {sky130_fd_pr/pfet3_01v8.sym} 1820 650 0 0 {name=M11
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1820 760 0 0 {name=M12
W=0.42
L=0.15
body=DGND
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
C {sky130_fd_pr/pfet3_01v8.sym} 2070 650 0 0 {name=M13
W=0.84
L=0.15
body=DVDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 2070 760 0 0 {name=M14
W=0.42
L=0.15
body=DGND
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
C {opin.sym} 2180 700 0 0 {name=p30 lab=out}
