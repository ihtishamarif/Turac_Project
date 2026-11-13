% --- OD Sensor Model Code ---

function OD_measured = ODSensorModel(X)
% X : true biomass concentration
% Output:
% OD_measured : simulated OD sensor reading with noise

    k = 1.0;           % scaling factor between true biomass and OD
    noise_level = 0.02; % ±2% noise

    % Generate Gaussian noise
    noise = noise_level * randn;

    % Simulated measured OD
    OD_measured = k * X + noise;
end
