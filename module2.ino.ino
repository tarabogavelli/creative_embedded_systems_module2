
int xVal = 0; 
int yVal = 0; 
int zVal = 0;
void setup() {
  Serial.begin(115200);
  pinMode(25, INPUT_PULLUP);
  
}

void loop() {
  xVal = analogRead(27);
  yVal = analogRead(26);
  zVal = digitalRead(25);
  Serial.print(xVal,DEC);
  Serial.print(",");
  Serial.print(yVal,DEC);
  Serial.print(",");
  Serial.print(!zVal,DEC);
  Serial.print(",");
  Serial.print("\n");
  delay(100);     
}
