import numpy as np

# --- 1. Define Model Parameters ---
mu = 0.025
WbyL = 0.42 / 0.15
Cox = 0.00834
Vth = 0.7
vsat = 8e4
lambdan = 0.2
EcL = 2 * vsat * 150e-9 / mu

# --- 2. Define the Analytical Model Function ---
def calc_analytical_ids(vds, vgs):
    vgt = max(vgs - Vth, 0.0)
    
    if vgt <= 0:
        return np.zeros_like(vds)
    
    vdsat = (vgt * EcL) / (vgt + EcL)
    vmin = np.minimum(vds, vdsat)

    term1 = mu * Cox * WbyL
    term2 = 1.0 / (1.0 + (vmin / EcL))
    term3 = (vgt * vmin) - (0.5 * vmin**2)
    term4 = 1.0 + (lambdan * vds)

    return term1 * term2 * term3 * term4

# --- 3. Load the SPICE Data ---
try:
    data = np.loadtxt('nmos_ids_vds.txt')
except FileNotFoundError:
    print("Error: 'nmos_ids_vds.txt' not found.")
    exit()

vgs_values = [0.6, 1.0, 1.4, 1.8]

# Set up a clean table for the output
print(f"{'Vgs':<6} | {'Mean % Error':<15}")
print("-" * 25)

# --- 4. Loop through each Vgs curve and calculate Errors ---
for i, vgs in enumerate(vgs_values):
    vds_sim = data[:, i*2]
    ids_sim = data[:, i*2 + 1]
    
    # Mask to skip rows where simulated Ids is practically 0 
    # (Catches exact 0s and the e-24/e-21 leakage values)
    mask = np.abs(ids_sim) > 1e-15
    
    vds_valid = vds_sim[mask]
    ids_sim_valid = ids_sim[mask]
    
    if len(ids_sim_valid) == 0:
        print(f"{vgs}V   | N/A (No valid data)")
        continue
    
    # Calculate analytical Ids for the valid Vds points
    ids_ana = calc_analytical_ids(vds_valid, vgs)
    
    # Calculate Mean Percentage Error
    error_pct = np.abs((ids_sim_valid - ids_ana) / ids_sim_valid) * 100
    mape = np.mean(error_pct)
    
    print(f"{vgs}V   | {mape:.2f}%")
