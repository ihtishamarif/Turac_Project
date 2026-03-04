/*
 * Simulink Stepped Response Generator
 * * Logic:
 * 1. Starts at 0.7 for the first 10 seconds.
 * 2. Steps down every 0.5 seconds (500ms).
 * 3. Settles at 0.4 infinitely.
 * * * MATH (Simulink Gain 1/255):
 * - 0.70 * 255 = 179
 * - 0.67 * 255 = 171
 * - 0.64 * 255 = 163
 * - 0.61 * 255 = 156
 * - 0.58 * 255 = 148
 * - 0.55 * 255 = 140
 * - 0.52 * 255 = 133
 * - 0.49 * 255 = 125
 * - 0.46 * 255 = 117
 * - 0.43 * 255 = 110
 * - 0.40 * 255 = 102
 */

void setup() {
  // Make sure this matches the Baud rate in your Simulink "Host Serial Setup"
  Serial.begin(9600); 
}

void loop() {
  byte valueToSend;
  unsigned long currentTime = millis();

  if (currentTime < 12000) {
  
    valueToSend =179;  
  } 
  else if (currentTime < 25000) {
    
    valueToSend = 145; 
  }
  
  else {
  
    valueToSend = 102;
  }

  // Send the raw byte to Simulinkb 
  Serial.write(valueToSend);

  // Wait 100ms (This matches the 0.1 sample time in your Simulink block)
  delay(100);
}
