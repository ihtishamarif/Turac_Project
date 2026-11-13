% --- Bioreactor code ---
function X_next = BioprocessModel(X, D, mu, dt)
% TuRAC Turbidostat Bioprocess Model
% Inputs:
%   X  - Current biomass concentration (OD proxy)
%   D  - Dilution rate [1/h]
%   mu - Specific growth rate [1/h]
%   dt - Simulation time step [h]
%
% Output:
%   X_next - Updated biomass concentration after one step

    % --- Growth model ---
    % dX/dt = mu*X - D*X
    dXdt = mu * X - D * X;

    % --- Euler integration (discrete update) ---
    X_next = X + dXdt * dt;

    % --- Prevent negative OD values ---
    if X_next < 0
        X_next = 0;
    end

    % --- Optional: Add small process noise to mimic biological variation
   % noise_level = 0.005;  % ±0.5% noise on OD
    %X_next = X_next + noise_level * randn;

end
