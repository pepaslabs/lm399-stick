EESchema Schematic File Version 2
LIBS:PL_analog_ICs
LIBS:PL_capacitors
LIBS:PL_comms
LIBS:PL_connectors
LIBS:PL_diodes
LIBS:PL_displays
LIBS:PL_inductors
LIBS:PL_LEDs
LIBS:PL_microcontrollers
LIBS:PL_mounting_holes
LIBS:PL_opamps
LIBS:PL_opto
LIBS:PL_power
LIBS:PL_references
LIBS:PL_regulators
LIBS:PL_relays
LIBS:PL_resistors
LIBS:PL_switchers
LIBS:PL_switches
LIBS:PL_transistors
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title ""
Date "26 aug 2022"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM399A U1
U 1 1 5920E49C
P 5750 4950
F 0 "U1" H 5750 5175 30  0000 C CNN
F 1 "LM399A" H 5750 5110 30  0000 C CNN
F 2 "~" H 5700 4750 60  0000 C CNN
F 3 "~" H 5700 4750 60  0000 C CNN
	1    5750 4950
	-1   0    0    -1  
$EndComp
$Comp
L R_0W25_1PCT R2
U 1 1 5920E4D8
P 3250 3100
F 0 "R2" V 3330 3100 40  0000 C CNN
F 1 "3k3" V 3250 3100 40  0000 C CNN
F 2 "" V 3180 3100 30  0000 C CNN
F 3 "" H 3250 3100 30  0000 C CNN
	1    3250 3100
	-1   0    0    -1  
$EndComp
NoConn ~ 4300 3250
NoConn ~ 4300 3150
$Comp
L R_0W25_1PCT R3
U 1 1 5920E54D
P 3250 4950
F 0 "R3" V 3330 4950 40  0000 C CNN
F 1 "22k" V 3250 4950 40  0000 C CNN
F 2 "" V 3180 4950 30  0000 C CNN
F 3 "" H 3250 4950 30  0000 C CNN
	1    3250 4950
	-1   0    0    -1  
$EndComp
$Comp
L R_0W25_1PCT R1
U 1 1 5920E5F0
P 5600 3100
F 0 "R1" V 5680 3100 40  0000 C CNN
F 1 "1k" V 5600 3100 40  0000 C CNN
F 2 "" V 5530 3100 30  0000 C CNN
F 3 "" H 5600 3100 30  0000 C CNN
	1    5600 3100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5920E940
P 4000 6400
F 0 "#PWR01" H 4000 6200 50  0001 C CNN
F 1 "GND" H 4000 6300 40  0000 C CNN
F 2 "" H 4000 6400 50  0000 C CNN
F 3 "" H 4000 6400 50  0000 C CNN
	1    4000 6400
	-1   0    0    -1  
$EndComp
Text GLabel 4450 2950 1    40   Input ~ 0
Vcc
$Comp
L OP07 U2
U 1 1 5920E4AB
P 4000 3250
F 0 "U2" H 4150 3350 40  0000 L CNN
F 1 "OP07" H 4150 3150 40  0000 L CNN
F 2 "~" H 4000 3250 50  0000 C CNN
F 3 "~" H 4000 3250 50  0000 C CNN
	1    4000 3250
	0    1    -1   0   
$EndComp
Text GLabel 5900 4100 1    40   Input ~ 0
Vcc
Text GLabel 5100 4500 0    40   Input ~ 0
+Vz
Text GLabel 5100 5450 0    40   Input ~ 0
-Vz
$Comp
L C_FILM C1
U 1 1 5ABAE594
P 5250 5000
F 0 "C1" H 5270 5060 30  0000 L BNN
F 1 "0.1uF" H 5270 4940 30  0000 L TNN
F 2 "" H 5288 4850 30  0000 C CNN
F 3 "" H 5250 5000 60  0000 C CNN
	1    5250 5000
	1    0    0    -1  
$EndComp
$Comp
L CONN_1X1 P1
U 1 1 5ABAE8B2
P 7550 3700
F 0 "P1" V 7550 3700 40  0000 C CNN
F 1 "CONN_1X1" V 7650 3700 40  0000 C CNN
F 2 "~" H 7600 3650 60  0000 C CNN
F 3 "~" H 7600 3650 60  0000 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_1X1 P2
U 1 1 5ABAE8C1
P 7550 4100
F 0 "P2" V 7550 4100 40  0000 C CNN
F 1 "CONN_1X1" V 7650 4100 40  0000 C CNN
F 2 "~" H 7600 4050 60  0000 C CNN
F 3 "~" H 7600 4050 60  0000 C CNN
	1    7550 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1X1 P3
U 1 1 5ABAE8D0
P 7550 4950
F 0 "P3" V 7550 4950 40  0000 C CNN
F 1 "CONN_1X1" V 7650 4950 40  0000 C CNN
F 2 "~" H 7600 4900 60  0000 C CNN
F 3 "~" H 7600 4900 60  0000 C CNN
	1    7550 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_1X1 P4
U 1 1 5ABAE8DF
P 7550 5350
F 0 "P4" V 7550 5350 40  0000 C CNN
F 1 "CONN_1X1" V 7650 5350 40  0000 C CNN
F 2 "~" H 7600 5300 60  0000 C CNN
F 3 "~" H 7600 5300 60  0000 C CNN
	1    7550 5350
	1    0    0    -1  
$EndComp
Text GLabel 7200 3700 0    40   Input ~ 0
Vcc
$Comp
L GND #PWR02
U 1 1 5ABAE8ED
P 7200 4200
F 0 "#PWR02" H 7200 4000 50  0001 C CNN
F 1 "GND" H 7200 4100 40  0000 C CNN
F 2 "" H 7200 4200 50  0000 C CNN
F 3 "" H 7200 4200 50  0000 C CNN
	1    7200 4200
	-1   0    0    -1  
$EndComp
Text GLabel 7200 4950 0    40   Input ~ 0
+Vz
Text GLabel 7200 5350 0    40   Input ~ 0
-Vz
$Comp
L CONN_2X1 P5
U 1 1 5ABB2046
P 6100 4300
F 0 "P5" V 6100 4300 40  0000 C CNN
F 1 "CONN_2X1" V 6200 4300 40  0000 C CNN
F 2 "~" H 6150 4300 60  0000 C CNN
F 3 "~" H 6150 4300 60  0000 C CNN
	1    6100 4300
	1    0    0    -1  
$EndComp
Text Notes 750  950  0    200  ~ 40
LM399 on a stick! (v1.3)
Text Notes 750  1200 0    100  ~ 20
See github.com/pepaslabs/lm399-stick
Text Notes 4300 3700 0    60   ~ 0
6.95V
Text Notes 4350 2400 0    60   ~ 0
8V
Text Notes 5600 4250 1    60   ~ 0
1mA
Text Notes 3250 4250 1    60   ~ 0
1mA
Text Notes 4000 2800 1    60   ~ 0
2mA
Text Notes 1150 4000 0    60   ~ 0
Rf\n1k\n1k5\n2k2\n3k3\n4k7\n6k8\n10k
Text Notes 1450 4000 0    60   ~ 0
Rg\n6k8\n10k\n15k\n22k\n33k\n47k\n68k
Text Notes 1750 4000 0    60   ~ 0
Ig mA\n1.02\n0.70\n0.46\n0.32\n0.21\n0.15\n0.10
Text Notes 2100 4000 0    60   ~ 0
Iz mA\n1.02\n1.04\n1.02\n1.04\n0.99\n1.01\n1.02
Text Notes 2950 1850 0    60   ~ 0
For Rf, Rg and Rz, a 1% drift causes roughly 1ppm Vz error.\nThis is an attenuation of about 10,000:1.\nTherefore, 100ppm/K 1% metal film are sufficient.
$Comp
L C_CER C2
U 1 1 62EECABC
P 6150 5000
F 0 "C2" H 6170 5060 30  0000 L BNN
F 1 "0.1uF" H 6170 4940 30  0000 L TNN
F 2 "" H 6188 4850 30  0000 C CNN
F 3 "" H 6150 5000 60  0000 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
$Comp
L C_CER C3
U 1 1 62EECB6C
P 4700 3300
F 0 "C3" H 4720 3360 30  0000 L BNN
F 1 "0.1uF" H 4720 3240 30  0000 L TNN
F 2 "" H 4738 3150 30  0000 C CNN
F 3 "" H 4700 3300 60  0000 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L C_CER C4
U 1 1 62EECC0D
P 2900 4950
F 0 "C4" H 2920 5010 30  0000 L BNN
F 1 "10nF" H 2920 4890 30  0000 L TNN
F 2 "" H 2938 4800 30  0000 C CNN
F 3 "" H 2900 4950 60  0000 C CNN
	1    2900 4950
	1    0    0    -1  
$EndComp
Text Notes 1150 3850 0    60   ~ 0
Rf/Rg options for 1mA Iz:
Text Notes 6300 4500 1    40   ~ 0
Heater disable\n(jumper)
Wire Wire Line
	4450 3350 4300 3350
Wire Wire Line
	4450 2950 4450 3350
Wire Wire Line
	3700 3350 3600 3350
Wire Wire Line
	4000 2900 4000 2400
Wire Wire Line
	3250 2400 5600 2400
Wire Wire Line
	3250 2400 3250 2900
Wire Wire Line
	3250 3300 3250 4750
Connection ~ 4000 2400
Wire Wire Line
	5900 4350 5900 4650
Wire Wire Line
	5900 5300 5900 5700
Wire Wire Line
	5600 2400 5600 2900
Wire Wire Line
	5600 3300 5600 4650
Wire Wire Line
	5600 5300 5600 5700
Wire Wire Line
	3250 5150 3250 5700
Wire Wire Line
	3900 3600 3900 3700
Wire Wire Line
	3900 3700 3250 3700
Connection ~ 3250 3700
Wire Wire Line
	4100 3600 4100 3700
Wire Wire Line
	4100 3700 5600 3700
Connection ~ 5600 3700
Wire Wire Line
	4450 3100 4700 3100
Wire Wire Line
	4700 3100 4700 3200
Connection ~ 4450 3100
Wire Wire Line
	5600 5700 4000 6050
Wire Wire Line
	4000 6050 3250 5700
Wire Wire Line
	4000 6050 5900 5700
Wire Wire Line
	4000 6050 4000 6400
Connection ~ 4000 6050
Wire Wire Line
	3600 3350 3600 5700
Connection ~ 5600 4600
Wire Wire Line
	3600 5700 4000 6050
Wire Wire Line
	5500 4500 5600 4600
Wire Wire Line
	5100 4500 5500 4500
Wire Wire Line
	5500 5450 5600 5350
Wire Wire Line
	5100 5450 5500 5450
Connection ~ 5600 5350
Wire Wire Line
	5250 4850 5250 4500
Connection ~ 5250 4500
Wire Wire Line
	5250 5150 5250 5450
Connection ~ 5250 5450
Wire Wire Line
	5900 4600 6150 4600
Wire Wire Line
	6150 4600 6150 4900
Connection ~ 5900 4600
Wire Wire Line
	6150 5100 6150 5350
Wire Wire Line
	6150 5350 5900 5350
Connection ~ 5900 5350
Wire Wire Line
	7350 3700 7200 3700
Wire Wire Line
	7350 4100 7200 4100
Wire Wire Line
	7200 4100 7200 4200
Wire Wire Line
	7350 4950 7200 4950
Wire Wire Line
	7350 5350 7200 5350
Wire Wire Line
	5900 4250 5900 4100
Wire Wire Line
	4700 3400 4700 3900
Wire Wire Line
	4700 3900 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	2900 4850 2900 4650
Wire Wire Line
	2900 4650 3250 4650
Connection ~ 3250 4650
Wire Wire Line
	2900 5050 2900 5250
Wire Wire Line
	2900 5250 3250 5250
Connection ~ 3250 5250
$EndSCHEMATC
