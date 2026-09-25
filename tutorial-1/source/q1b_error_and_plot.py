import numpy as np
import matplotlib.pyplot as plt

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
colors = ['red', 'blue', 'green', 'purple'] # Distinct colors for each Vgs curve

# Set up a clean table for the output
print(f"{'Vgs':<6} | {'Mean % Error':<15}")
print("-" * 25)

# Initialize the plot
plt.figure(figsize=(10, 6))

# --- 4. Loop through each Vgs curve ---
for i, (vgs, color) in enumerate(zip(vgs_values, colors)):
    vds_sim = data[:, i*2]
    ids_sim = data[:, i*2 + 1]
    
    # Calculate analytical Ids for the whole sweep to plot the full curve
    ids_ana_plot = calc_analytical_ids(vds_sim, vgs)
    
    # Plotting (multiplying by 1e6 to convert Amps to microamps for the graph)
    plt.plot(vds_sim, ids_sim * 1e6, label=f'Sim (Vgs={vgs}V)', color=color, linestyle='-')
    plt.plot(vds_sim, ids_ana_plot * 1e6, label=f'Ana (Vgs={vgs}V)', color=color, linestyle='--')
    
    # Mask to skip rows where simulated Ids is practically 0 for Error Calculation
    mask = np.abs(ids_sim) > 1e-15
    vds_valid = vds_sim[mask]
    ids_sim_valid = ids_sim[mask]
    
    if len(ids_sim_valid) == 0:
        print(f"{vgs}V   | N/A (No valid data)")
        continue
    
    # Calculate analytical Ids strictly for the valid points
    ids_ana_valid = calc_analytical_ids(vds_valid, vgs)
    
    # Calculate Mean Percentage Error
    error_pct = np.abs((ids_sim_valid - ids_ana_valid) / ids_sim_valid) * 100
    mape = np.mean(error_pct)
    
    print(f"{vgs}V   | {mape:.2f}%")

# --- 5. Finalize and Show Plot ---
plt.title('NMOS Output Characteristics: Simulated vs Analytical Model')
plt.xlabel('Vds (V)')
plt.ylabel('Ids (uA)')
plt.grid(True, linestyle=':', alpha=0.7)

# Move the legend outside the plot area so it doesn't cover the curves
plt.legend(bbox_to_anchor=(1.04, 1), loc="upper left")
plt.tight_layout()

plt.show()
