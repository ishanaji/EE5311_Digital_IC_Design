import numpy as np

def analyse(fname, ts0):
    # columns: index, tdq, tdc, tcq (skip header lines)
    d = np.loadtxt(fname, skiprows=5)
    idx, tdq, tdc, tcq = d[:, 0], d[:, 1], d[:, 2], d[:, 3]
    i = np.argmin(tdq)
    ts = ts0 + i * 5e-12
    print(f"{fname}: min tDQ = {tdq[i]*1e12:.3f} ps at index {int(idx[i])} (ts = {ts*1e9:.3f} ns)")
    print(f"  tsetup = tDC = {tdc[i]*1e12:.1f} ps, tCQ = {tcq[i]*1e12:.3f} ps")

analyse("time_data_rise.txt", 9.80e-9)
analyse("time_data_fall.txt", 9.70e-9)
