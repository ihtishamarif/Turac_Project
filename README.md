# TuRAC Project

Turbidostat bioreactor simulation (Simulink/MATLAB) with Arduino hardware-in-the-loop (HIL) test input.

## Layout

| Path | Description |
|------|-------------|
| `simulink_matlab/ODSensorModel.m` | OD sensor model (biomass x scaling + Gaussian noise) |
| `simulink_matlab/Controller.m` | PI turbidostat controller, OD setpoint 0.4 |
| `simulink_matlab/BioprocessModel.m` | Biomass growth model (Euler step) |
| `simulink_matlab/Pump_Actuator.m` | Pump actuator with response lag |
| `arduino_hil/hil_stepped_response.ino` | Arduino sketch sending a stepped OD signal over serial (9600 baud) to Simulink |

Each `.m` file is the body of a MATLAB Function block in the Simulink model (v1).
