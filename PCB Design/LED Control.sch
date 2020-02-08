EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED-Control-rescue:Arduino_Nano_v3.x-MCU_Module A1
U 1 1 5DB50132
P 8400 3550
F 0 "A1" H 8400 2461 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 8400 2370 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8550 2600 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8400 2550 50  0001 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DB51CE0
P 7350 4200
F 0 "R5" H 7420 4246 50  0000 L CNN
F 1 "330" H 7420 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7280 4200 50  0001 C CNN
F 3 "~" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DB5272D
P 6050 4200
F 0 "R3" H 6120 4246 50  0000 L CNN
F 1 "330" H 6120 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 4200 50  0001 C CNN
F 3 "~" H 6050 4200 50  0001 C CNN
	1    6050 4200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 5DB5561B
P 6800 2500
F 0 "SW1" H 6800 2785 50  0000 C CNN
F 1 "SW_Push_Dual" H 6800 2694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 6800 2700 50  0001 C CNN
F 3 "~" H 6800 2700 50  0001 C CNN
	1    6800 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5DB562FA
P 6050 4650
F 0 "D1" V 6089 4533 50  0000 R CNN
F 1 "BLUE LED" V 5998 4533 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6050 4650 50  0001 C CNN
F 3 "~" H 6050 4650 50  0001 C CNN
	1    6050 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DB56DAD
P 6700 4650
F 0 "D2" V 6739 4532 50  0000 R CNN
F 1 "RED LED" V 6648 4532 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6700 4650 50  0001 C CNN
F 3 "~" H 6700 4650 50  0001 C CNN
	1    6700 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5DB5744C
P 7350 4650
F 0 "D3" V 7389 4533 50  0000 R CNN
F 1 "WHITE LED" V 7298 4533 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7350 4650 50  0001 C CNN
F 3 "~" H 7350 4650 50  0001 C CNN
	1    7350 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DB58CAA
P 6700 5250
F 0 "#PWR0102" H 6700 5000 50  0001 C CNN
F 1 "GND" H 6705 5077 50  0000 C CNN
F 2 "" H 6700 5250 50  0001 C CNN
F 3 "" H 6700 5250 50  0001 C CNN
	1    6700 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DB5923B
P 8500 5250
F 0 "#PWR0103" H 8500 5000 50  0001 C CNN
F 1 "GND" H 8505 5077 50  0000 C CNN
F 2 "" H 8500 5250 50  0001 C CNN
F 3 "" H 8500 5250 50  0001 C CNN
	1    8500 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5DBA9B2D
P 8300 1900
F 0 "#PWR0104" H 8300 1750 50  0001 C CNN
F 1 "VCC" H 8317 2073 50  0000 C CNN
F 2 "" H 8300 1900 50  0001 C CNN
F 3 "" H 8300 1900 50  0001 C CNN
	1    8300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DB5210E
P 6700 4200
F 0 "R4" H 6770 4246 50  0000 L CNN
F 1 "330" H 6770 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6630 4200 50  0001 C CNN
F 3 "~" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3750 7350 3750
Wire Wire Line
	6050 3550 6050 4050
Wire Wire Line
	6050 4350 6050 4500
Wire Wire Line
	6700 3650 6700 4050
Wire Wire Line
	6700 4350 6700 4500
Wire Wire Line
	7350 3750 7350 4050
Wire Wire Line
	7350 4350 7350 4500
Wire Wire Line
	6050 4800 6050 5050
Wire Wire Line
	6700 4800 6700 5050
Wire Wire Line
	6700 5050 7350 5050
Wire Wire Line
	7350 5050 7350 4800
Wire Wire Line
	6700 5250 6700 5050
Wire Wire Line
	8300 1900 8300 2200
Wire Wire Line
	7900 3150 7550 3150
Wire Wire Line
	8300 2200 7550 2200
Connection ~ 8300 2200
Wire Wire Line
	8300 2200 8300 2550
Wire Wire Line
	7000 2500 7250 2500
Wire Wire Line
	7250 2500 7250 3150
Wire Wire Line
	7250 3150 7550 3150
Connection ~ 7550 3150
Wire Wire Line
	7550 2200 7550 2350
Wire Wire Line
	7550 3150 7550 2650
$Comp
L Device:R R1
U 1 1 5DBEB19F
P 7550 2500
F 0 "R1" H 7620 2546 50  0000 L CNN
F 1 "1k" H 7620 2455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7480 2500 50  0001 C CNN
F 3 "~" H 7550 2500 50  0001 C CNN
	1    7550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2550 8600 2200
NoConn ~ 6600 2700
NoConn ~ 7000 2700
Wire Wire Line
	8500 4550 8500 5000
$Comp
L power:GNDPWR #PWR0112
U 1 1 5DC59DD3
P 9350 5250
F 0 "#PWR0112" H 9350 5050 50  0001 C CNN
F 1 "GNDPWR" H 9354 5096 50  0000 C CNN
F 2 "" H 9350 5200 50  0001 C CNN
F 3 "" H 9350 5200 50  0001 C CNN
	1    9350 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DC5B68A
P 8950 5000
F 0 "R6" V 9157 5000 50  0000 C CNN
F 1 "1k" V 9066 5000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 5000 50  0001 C CNN
F 3 "~" H 8950 5000 50  0001 C CNN
	1    8950 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 5000 9350 5000
Wire Wire Line
	9350 5000 9350 5250
Wire Wire Line
	8800 5000 8500 5000
Connection ~ 8500 5000
Wire Wire Line
	8500 5000 8500 5250
$Comp
L Device:R R2
U 1 1 5DC6032C
P 6750 3350
F 0 "R2" V 6543 3350 50  0000 C CNN
F 1 "330" V 6634 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 3350 50  0001 C CNN
F 3 "~" H 6750 3350 50  0001 C CNN
	1    6750 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 3350 6900 3350
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5DC63C25
P 4950 2900
F 0 "J2" H 4868 2575 50  0000 C CNN
F 1 "TO WS2812B LED STRIP" H 4868 2666 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S3B-PH-K_1x03_P2.00mm_Horizontal" H 4950 2900 50  0001 C CNN
F 3 "~" H 4950 2900 50  0001 C CNN
	1    4950 2900
	-1   0    0    1   
$EndComp
Text Label 5150 3000 0    50   ~ 0
WS_PWR
Text Label 5150 2900 0    50   ~ 0
DATA_IN
Text Label 5150 2800 0    50   ~ 0
WS_GND
$Comp
L power:VCC #PWR0101
U 1 1 5DC6D140
P 5600 3350
F 0 "#PWR0101" H 5600 3200 50  0001 C CNN
F 1 "VCC" H 5617 3523 50  0000 C CNN
F 2 "" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0105
U 1 1 5DC6FDCC
P 5750 2350
F 0 "#PWR0105" H 5750 2150 50  0001 C CNN
F 1 "GNDPWR" H 5754 2196 50  0000 C CNN
F 2 "" H 5750 2300 50  0001 C CNN
F 3 "" H 5750 2300 50  0001 C CNN
	1    5750 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 2200 10400 3250
Connection ~ 10400 3250
Wire Wire Line
	9900 3250 10400 3250
Wire Wire Line
	9900 3400 9900 3250
Wire Wire Line
	9900 4200 10400 4200
Wire Wire Line
	9900 4350 9900 4200
Wire Wire Line
	9750 4500 9450 4500
Wire Wire Line
	9450 3550 9750 3550
Wire Wire Line
	9300 2700 9750 2700
$Comp
L Device:R_POT RV2
U 1 1 5DB53CD3
P 9900 3550
F 0 "RV2" H 9830 3504 50  0000 R CNN
F 1 "100k" H 9830 3595 50  0000 R CNN
F 2 "Custom Footprint:Potentiometer_4mm_Pitch" H 9900 3550 50  0001 C CNN
F 3 "~" H 9900 3550 50  0001 C CNN
	1    9900 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5DB547D6
P 9900 4500
F 0 "RV3" H 9830 4454 50  0000 R CNN
F 1 "100k" H 9830 4545 50  0000 R CNN
F 2 "Custom Footprint:Potentiometer_4mm_Pitch" H 9900 4500 50  0001 C CNN
F 3 "~" H 9900 4500 50  0001 C CNN
	1    9900 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5DB54CA3
P 9900 2700
F 0 "RV1" H 9830 2654 50  0000 R CNN
F 1 "100k" H 9830 2745 50  0000 R CNN
F 2 "Custom Footprint:Potentiometer_4mm_Pitch" H 9900 2700 50  0001 C CNN
F 3 "~" H 9900 2700 50  0001 C CNN
	1    9900 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5E302873
P 3300 3450
F 0 "R7" H 3370 3496 50  0000 L CNN
F 1 "330" H 3370 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3230 3450 50  0001 C CNN
F 3 "~" H 3300 3450 50  0001 C CNN
	1    3300 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5E3030E7
P 3300 3950
F 0 "D4" V 3339 3832 50  0000 R CNN
F 1 "GREEN LED" V 3248 3832 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3300 3950 50  0001 C CNN
F 3 "~" H 3300 3950 50  0001 C CNN
	1    3300 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 3600 3300 3800
$Comp
L power:GND #PWR0106
U 1 1 5E310596
P 2700 4400
F 0 "#PWR0106" H 2700 4150 50  0001 C CNN
F 1 "GND" H 2705 4227 50  0000 C CNN
F 2 "" H 2700 4400 50  0001 C CNN
F 3 "" H 2700 4400 50  0001 C CNN
	1    2700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E317C51
P 9900 2950
F 0 "#PWR0107" H 9900 2700 50  0001 C CNN
F 1 "GND" H 9905 2777 50  0000 C CNN
F 2 "" H 9900 2950 50  0001 C CNN
F 3 "" H 9900 2950 50  0001 C CNN
	1    9900 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E31801B
P 9900 3850
F 0 "#PWR0108" H 9900 3600 50  0001 C CNN
F 1 "GND" H 9905 3677 50  0000 C CNN
F 2 "" H 9900 3850 50  0001 C CNN
F 3 "" H 9900 3850 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5E3182B2
P 9900 4850
F 0 "#PWR0111" H 9900 4600 50  0001 C CNN
F 1 "GND" H 9905 4677 50  0000 C CNN
F 2 "" H 9900 4850 50  0001 C CNN
F 3 "" H 9900 4850 50  0001 C CNN
	1    9900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3250 10400 4200
Wire Wire Line
	9900 2550 9900 2200
Wire Wire Line
	9900 2850 9900 2950
Wire Wire Line
	9900 3700 9900 3850
Wire Wire Line
	9900 4650 9900 4850
Text GLabel 2700 2950 1    50   Input ~ 0
+5V
$Comp
L Device:C_Small C1
U 1 1 5E34619E
P 3050 1950
F 0 "C1" H 3142 1996 50  0000 L CNN
F 1 "0.1uF" H 3142 1905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3050 1950 50  0001 C CNN
F 3 "~" H 3050 1950 50  0001 C CNN
	1    3050 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5E347A50
P 2150 3600
F 0 "C3" H 2242 3646 50  0000 L CNN
F 1 "0.1uF" H 2242 3555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2150 3600 50  0001 C CNN
F 3 "~" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3650 7900 3650
Wire Wire Line
	6050 3550 7900 3550
Connection ~ 6700 5050
Wire Wire Line
	6050 5050 6700 5050
Wire Wire Line
	5950 3350 6600 3350
Wire Wire Line
	8600 2200 9900 2200
Connection ~ 9900 2200
Wire Wire Line
	9900 2200 10400 2200
Wire Wire Line
	9450 4500 9450 3750
Wire Wire Line
	9450 3750 8900 3750
Wire Wire Line
	9450 3550 9450 3650
Wire Wire Line
	9450 3650 8900 3650
Wire Wire Line
	9300 2700 9300 3550
Wire Wire Line
	9300 3550 8900 3550
$Comp
L power:GND #PWR0113
U 1 1 5E37F9D2
P 6300 2600
F 0 "#PWR0113" H 6300 2350 50  0001 C CNN
F 1 "GND" H 6305 2427 50  0000 C CNN
F 2 "" H 6300 2600 50  0001 C CNN
F 3 "" H 6300 2600 50  0001 C CNN
	1    6300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2600 6300 2500
Wire Wire Line
	6300 2500 6600 2500
Wire Wire Line
	5150 2900 5950 2900
Wire Wire Line
	5950 2900 5950 3350
Wire Wire Line
	3300 4200 3300 4100
Wire Wire Line
	2700 4400 2700 4200
Text Notes 7950 1400 0    50   ~ 0
MICROCONTROLLER
Text Notes 2450 1150 0    50   ~ 0
POWER LINES
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5E3E22AC
P 1950 6250
F 0 "J3" H 1868 5925 50  0000 C CNN
F 1 "Conn_01x03" H 1868 6016 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-3-2.54_1x03_P2.54mm_Horizontal" H 1950 6250 50  0001 C CNN
F 3 "~" H 1950 6250 50  0001 C CNN
	1    1950 6250
	-1   0    0    1   
$EndComp
Text Notes 2900 5200 0    50   ~ 0
SOUND SENSOR
Text GLabel 2600 5700 1    50   Input ~ 0
+5V
Wire Wire Line
	2150 6150 2600 6150
Wire Wire Line
	2600 6150 2600 5700
Text Label 2150 6350 0    50   ~ 0
SS_GND
Text Label 2150 6150 0    50   ~ 0
SS_PWR
$Comp
L power:GND #PWR0114
U 1 1 5E3F3C81
P 2650 7150
F 0 "#PWR0114" H 2650 6900 50  0001 C CNN
F 1 "GND" H 2655 6977 50  0000 C CNN
F 2 "" H 2650 7150 50  0001 C CNN
F 3 "" H 2650 7150 50  0001 C CNN
	1    2650 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6350 2650 6350
Wire Wire Line
	2650 6350 2650 6750
Wire Wire Line
	3550 6750 2650 6750
Connection ~ 2650 6750
Wire Wire Line
	2650 6750 2650 7150
Wire Wire Line
	3300 6250 3550 6250
Wire Wire Line
	3550 6250 3550 6350
$Comp
L Device:R R8
U 1 1 5E40F635
P 3150 6250
F 0 "R8" V 2943 6250 50  0000 C CNN
F 1 "100k" V 3034 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3080 6250 50  0001 C CNN
F 3 "~" H 3150 6250 50  0001 C CNN
	1    3150 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 6250 2150 6250
Wire Wire Line
	3550 6250 3950 6250
Connection ~ 3550 6250
Text GLabel 3950 6250 2    50   Input ~ 0
A3
Text Label 2150 6250 0    50   ~ 0
SS_DATA_OUT
Wire Wire Line
	3300 3100 3300 3300
Connection ~ 2700 3100
Wire Wire Line
	2700 2950 2700 3100
Wire Wire Line
	2150 3700 2150 4200
Wire Wire Line
	2150 3100 2150 3500
Wire Wire Line
	3050 2300 3050 2050
Wire Wire Line
	3050 1600 3050 1850
Text Label 2250 1850 0    50   ~ 0
VCC
Text Label 2250 2050 0    50   ~ 0
GNDPWR
Wire Wire Line
	5600 3350 5600 3000
Wire Wire Line
	5600 3000 5150 3000
Wire Wire Line
	5750 2800 5750 2350
Wire Wire Line
	5150 2800 5750 2800
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5E419020
P 1950 1950
F 0 "J1" H 2007 2267 50  0000 C CNN
F 1 "5V 5A Power" H 2007 2176 50  0000 C CNN
F 2 "PJ-002AH:CUI_PJ-002AH" H 2000 1910 50  0001 C CNN
F 3 "~" H 2000 1910 50  0001 C CNN
	1    1950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1850 2750 1600
Wire Wire Line
	2250 1850 2750 1850
Wire Wire Line
	2750 2050 2750 2300
Wire Wire Line
	2250 2050 2750 2050
NoConn ~ 2250 1950
Wire Wire Line
	2750 2300 3050 2300
Wire Wire Line
	2750 1600 3050 1600
Wire Wire Line
	3500 2300 3500 2050
Wire Wire Line
	3500 1600 3500 1850
$Comp
L Device:C_Small C2
U 1 1 5E45151D
P 3500 1950
F 0 "C2" H 3592 1996 50  0000 L CNN
F 1 "0.1uF" H 3592 1905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3500 1950 50  0001 C CNN
F 3 "~" H 3500 1950 50  0001 C CNN
	1    3500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1600 3050 1600
Connection ~ 3050 1600
Wire Wire Line
	3500 2300 3050 2300
Connection ~ 3050 2300
$Comp
L Device:C_Small C4
U 1 1 5E48B0DD
P 2700 3600
F 0 "C4" H 2792 3646 50  0000 L CNN
F 1 "1uF" H 2792 3555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2700 3600 50  0001 C CNN
F 3 "~" H 2700 3600 50  0001 C CNN
	1    2700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3100 2700 3100
Wire Wire Line
	2700 3100 3300 3100
Wire Wire Line
	2700 3100 2700 3500
Wire Wire Line
	2700 3700 2700 4200
Wire Wire Line
	2700 4200 2150 4200
Connection ~ 2700 4200
Wire Wire Line
	2700 4200 3300 4200
NoConn ~ 7900 3050
NoConn ~ 7900 2950
NoConn ~ 8500 2550
NoConn ~ 8900 2950
NoConn ~ 8900 3050
NoConn ~ 8900 3350
NoConn ~ 7900 3250
NoConn ~ 7900 3450
NoConn ~ 7900 3850
NoConn ~ 7900 3950
NoConn ~ 7900 4050
NoConn ~ 7900 4150
NoConn ~ 7900 4250
NoConn ~ 8400 4550
NoConn ~ 8900 4250
NoConn ~ 8900 4150
NoConn ~ 8900 4050
NoConn ~ 8900 3950
NoConn ~ 8900 3850
$Comp
L Device:C_Small C5
U 1 1 5E4E4C59
P 3550 6450
F 0 "C5" H 3642 6496 50  0000 L CNN
F 1 "0.1uF" H 3642 6405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3550 6450 50  0001 C CNN
F 3 "~" H 3550 6450 50  0001 C CNN
	1    3550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6550 3550 6750
$EndSCHEMATC
