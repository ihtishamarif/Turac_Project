% ---pump code ---

function D_out = Pump_Actuator(D_in)
    %#codegen
coder.extrinsic('fprintf')  % optional
X_next = double(0);
    delay_factor = 0.9; % simulate response lag
    D_out = delay_factor * D_in;
end
