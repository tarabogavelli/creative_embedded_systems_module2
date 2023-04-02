# creative_embedded_systems_module2

# Interactive Devices

This repository contains Arduino code written in C++ and Processing code written in Java for an interactive devices project using an ESP32 and a joystick to move a dot around a screen.

## Materials
• ESP32 TTGO T-Display <br /> 
• USB-C Cable <br /> 
• 2020 MacBook Pro running Ventura 13.2 <br /> 
• Joystick <br /> 
• Breadboard <br /> 
• 5 wires <br /> 

## Steps
### Getting Arduino IDE
• Download legacy [Arduino IDE](https://www.arduino.cc/en/software) (Arduino IDE 1.8.X) <br /> 
• Download [driver](https://www.google.com/url?q=https://www.wch.cn/downloads/CH34XSER_MAC_ZIP.html&sa=D&source=docs&ust=1678074010916145&usg=AOvVaw2ycl5cICa0WuuEadTZwqtU) to get port (might require changing system preference setting to allow downloads from web browsers) which will eventually show up as /dev/cu.wchusbserialXXXXXXXX under Tools → select port in the Arduino IDE <br /> 
• Plug in ESP32 to MacBook using USB-C cable <br /> 
• Go to Settings and open the Additional Boards Manager to paste the following URL: https://dl.espressif.com/dl/package_esp32_index.json <br /> 
• Go to Tools → Board → ESP32 Arduino → select TTGO T1 <br /> 
• Go to Tools → Port, select /dev/cu.wchusbserialXXXXXXXX <br /> 
• Find the file User_Setup_Select.h in the Arduino folder on the computer, open the file and ensure that all lines except #include<User_Setups/Setup25_TTGO_T_Display.h> are commented out <br /> 
• Go to Tools → Manage Library and search for tft_eSPI and install it <br /> 
• Open a new file in the Arduino IDE and start writing code! Click the upload button to flash it onto the ESP32 or download this file and upload it to see the generative art <br /> 

### Setting up software
• Download Processing <br /> 
• At top of processing file include "import processing.serial.*;" to use serial <br /> 

### Setting up hardware
• Push ESP32 pins into middle of breadboard <br /> 
• Push Joystick pins into breadboard above ESP32 <br /> 
• Connect pin labeled as GND (ground) on joystick to G (ground) pin of ESP32 using a wire <br /> 
• Connect pin labeled +5V on joystick to 3V pin on top right of ESP32 using another wire <br /> 
• Connect pin labeled VRX on joystick to pin 27 on ESP32 <br /> 
• Connect pin labeled VRY on joystick to pin 26 on ESP32 <br /> 
• Connect pin labeled SW on joystick to pin 25 on ESP32 <br /> 

### Writing Arduino
• Make sure to recall which pin number corresponded to various joystick functions <br /> 
• For the SW joystick pin number remmeber to set pinmode to INPUT_PULLUP and use digitalRead since this is the button component of the joystick <br /> 
• Pick a way to send data from ESP32 to Processing code, I recommend using Serial.print and printing some marker in between each value that way when parsing values in processing code you can split on the marker <br /> 


![Installation](https://imgur.com/gallery/oO2Liv2) <br /> 
Link to blog post: https://medium.com/@tb2913/creative-embedded-systems-interactive-devices-module-blog-post-f07aa73487e8
