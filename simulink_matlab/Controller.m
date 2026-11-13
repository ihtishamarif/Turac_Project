% --- Controller Code ---
function D = Controller(X_measured)
persistent error_int
if isempty(error_int)
    error_int = 0;
end

% --- Controller parameters ---
OD_setpoint = 0.4;     % desired OD / biomass level
Kp = 0.25;             % proportional gain
Ki = 0.02;             % integral gain
dt = 0.1;              % same as simulation step time

% --- Compute control error ---
error = OD_setpoint - X_measured;

% --- Integrate error ---
error_int = error_int + error * dt;

% --- Compute control output (with correct sign for turbidostat) ---
D = 0.05 - (Kp * error + Ki * error_int);
%  ↑  note the minus sign (reduces D when OD < setpoint)

% --- Apply physical limits ---
D = max(min(D, 0.6), 0.01);   % between 0.01–0.5 1/h typical for algal dilution
end
