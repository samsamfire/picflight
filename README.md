# PICFLIGHT 

## Introduction

This project is a fully functional flight controller based on a PIC32MX795F512H featuring :

- 400 Hz control loop
- X configuration
- Bluetooth connectivity (via an HC06 bluetooth module)
- BNO055 and MPU6050 support
- Programmable via a pickit 3 or 4

## PCB
Full schematics and gerber files are available inside the /pcb folder

### Top
![alt text](https://github.com/samsamfire/picflight/blob/master/pcb/svg-renders/top.svg?raw=true)
### Bottom
![alt text](https://github.com/samsamfire/picflight/blob/master/pcb/svg-renders/bottom.svg?raw=true)

## Firmware
Firmware is located in /mplab
The firmware uses Mplab Harmony v3 for its core features
Build passes with :
- mplab v5.45
- xc32 v3.01