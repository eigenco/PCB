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
Text GLabel 6050 1500 2    50   BiDi ~ 0
D0
Text GLabel 6050 1400 2    50   BiDi ~ 0
D1
Text GLabel 6050 1300 2    50   BiDi ~ 0
D2
Text GLabel 6050 1200 2    50   BiDi ~ 0
D3
Text GLabel 6050 1100 2    50   BiDi ~ 0
D4
Text GLabel 6050 1000 2    50   BiDi ~ 0
D5
Text GLabel 6050 900  2    50   BiDi ~ 0
D6
Text GLabel 6050 800  2    50   BiDi ~ 0
D7
Text GLabel 6050 3700 2    50   Input ~ 0
A0
Text GLabel 6050 3600 2    50   Input ~ 0
A1
Text GLabel 6050 3500 2    50   Input ~ 0
A2
Text GLabel 6050 3400 2    50   Input ~ 0
A3
Text GLabel 6050 3300 2    50   Input ~ 0
A4
Text GLabel 6050 3200 2    50   Input ~ 0
A5
Text GLabel 6050 3100 2    50   Input ~ 0
A6
Text GLabel 6050 3000 2    50   Input ~ 0
A7
Text GLabel 6050 2900 2    50   Input ~ 0
A8
Text GLabel 6050 2800 2    50   Input ~ 0
A9
Text GLabel 6050 2700 2    50   Input ~ 0
A10
Text GLabel 6050 2600 2    50   Input ~ 0
A11
Text GLabel 6050 2500 2    50   Input ~ 0
A12
Text GLabel 6050 2400 2    50   Input ~ 0
A13
Text GLabel 6050 2300 2    50   Input ~ 0
A14
Text GLabel 6050 2200 2    50   Input ~ 0
A15
Text GLabel 6050 2100 2    50   Input ~ 0
A16
Text GLabel 6050 2000 2    50   Input ~ 0
A17
Text GLabel 6050 1800 2    50   Input ~ 0
A19
Text GLabel 4650 3700 0    50   UnSpc ~ 0
GND
Text GLabel 4650 3500 0    50   UnSpc ~ 0
VCC
Text GLabel 4650 900  0    50   UnSpc ~ 0
VCC
Text GLabel 4650 1600 0    50   UnSpc ~ 0
GND
Text GLabel 4650 700  0    50   UnSpc ~ 0
GND
Text GLabel 4650 2000 0    50   Input ~ 0
IOR
Text GLabel 4650 1900 0    50   Input ~ 0
IOW
Text GLabel 4650 2600 0    50   Output ~ 0
CLK
$Comp
L Connector:Bus_ISA_8bit J4
U 1 1 60DD7EBA
P 5350 2200
F 0 "J4" H 5350 3967 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 5350 3876 50  0000 C CNN
F 2 "adlib:BUS_PC" H 5350 2200 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 5350 2200 50  0001 C CNN
	1    5350 2200
	1    0    0    -1  
$EndComp
Text GLabel 4650 3600 0    50   Input ~ 0
OSC
Text GLabel 4650 800  0    50   Output ~ 0
RESET
Text GLabel 6050 1700 2    50   UnSpc ~ 0
AEN
Text GLabel 6050 1900 2    50   Input ~ 0
A18
$Comp
L 74xx:74LS92 74LS92
U 1 1 6159B42E
P 5350 4650
F 0 "74LS92" H 5350 5450 50  0000 C CNN
F 1 "74LS92" H 5350 5375 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5350 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS92" H 5350 4650 50  0001 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
Text GLabel 5850 4750 2    50   Output ~ 0
OSC1
Text GLabel 4850 4750 0    50   Input ~ 0
RESET
Text GLabel 4850 4850 0    50   Input ~ 0
RESET
Text GLabel 5350 5150 3    50   UnSpc ~ 0
GND
Text GLabel 5350 4150 1    50   UnSpc ~ 0
VCC
Text GLabel 4850 4450 0    50   UnSpc ~ 0
OSC
$Comp
L 74xx:74LS688 PIT_74LS688
U 1 1 6159DD05
P 1400 2025
F 0 "PIT_74LS688" H 1150 3525 50  0000 L CNN
F 1 "74LS688" H 1225 3450 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 1400 2025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 1400 2025 50  0001 C CNN
	1    1400 2025
	1    0    0    -1  
$EndComp
Text GLabel 1400 825  1    50   UnSpc ~ 0
VCC
Text GLabel 1400 3225 3    50   UnSpc ~ 0
GND
Text GLabel 900  2925 0    50   UnSpc ~ 0
AEN
Text GLabel 900  1125 0    50   UnSpc ~ 0
GND
Text GLabel 900  1225 0    50   UnSpc ~ 0
GND
Text GLabel 900  1325 0    50   UnSpc ~ 0
GND
Text GLabel 900  1425 0    50   UnSpc ~ 0
GND
Text GLabel 900  1525 0    50   UnSpc ~ 0
VCC
Text GLabel 900  1625 0    50   UnSpc ~ 0
GND
Text GLabel 900  1725 0    50   UnSpc ~ 0
GND
Text GLabel 900  1825 0    50   UnSpc ~ 0
GND
Text GLabel 900  2025 0    50   Input ~ 0
A2
Text GLabel 900  2125 0    50   Input ~ 0
A3
Text GLabel 900  2225 0    50   Input ~ 0
A4
Text GLabel 900  2325 0    50   Input ~ 0
A5
Text GLabel 900  2425 0    50   Input ~ 0
A6
Text GLabel 900  2525 0    50   Input ~ 0
A7
Text GLabel 900  2625 0    50   Input ~ 0
A8
Text GLabel 900  2725 0    50   Input ~ 0
A9
Text GLabel 1900 1125 2    50   Output ~ 0
CSPIT
$Comp
L 74xx:74LS688 PIC_74LS688
U 1 1 6159F2ED
P 3375 2025
F 0 "PIC_74LS688" H 3125 3525 50  0000 L CNN
F 1 "74LS688" H 3225 3450 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3375 2025 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 3375 2025 50  0001 C CNN
	1    3375 2025
	1    0    0    -1  
$EndComp
Text GLabel 2875 2925 0    50   UnSpc ~ 0
AEN
Text GLabel 2875 2725 0    50   Input ~ 0
A9
Text GLabel 2875 2625 0    50   Input ~ 0
A8
Text GLabel 2875 2525 0    50   Input ~ 0
A7
Text GLabel 2875 2425 0    50   Input ~ 0
A6
Text GLabel 2875 2325 0    50   Input ~ 0
A5
Text GLabel 2875 2225 0    50   Input ~ 0
A4
Text GLabel 2875 2125 0    50   Input ~ 0
A3
Text GLabel 2875 2025 0    50   Input ~ 0
A2
Text GLabel 2875 1125 0    50   UnSpc ~ 0
GND
Text GLabel 2875 1225 0    50   UnSpc ~ 0
GND
Text GLabel 2875 1325 0    50   UnSpc ~ 0
GND
Text GLabel 2875 1425 0    50   UnSpc ~ 0
VCC
Text GLabel 2875 1525 0    50   UnSpc ~ 0
GND
Text GLabel 2875 1625 0    50   UnSpc ~ 0
GND
Text GLabel 2875 1725 0    50   UnSpc ~ 0
GND
Text GLabel 2875 1825 0    50   UnSpc ~ 0
GND
Text GLabel 3875 1125 2    50   Output ~ 0
CSPIC
Text GLabel 3375 825  1    50   UnSpc ~ 0
VCC
Text GLabel 3375 3225 3    50   UnSpc ~ 0
GND
$Comp
L Connector_Generic:Conn_02x14_Counter_Clockwise PIC8259
U 1 1 615A384D
P 3325 4275
F 0 "PIC8259" H 3375 5092 50  0000 C CNN
F 1 "Conn_02x14_Counter_Clockwise" H 3375 5001 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 3325 4275 50  0001 C CNN
F 3 "~" H 3325 4275 50  0001 C CNN
	1    3325 4275
	1    0    0    -1  
$EndComp
Text GLabel 3125 3675 0    50   UnSpc ~ 0
CSPIC
Text GLabel 3125 3775 0    50   Input ~ 0
IOW
Text GLabel 3125 3875 0    50   Input ~ 0
IOR
Text GLabel 3125 3975 0    50   BiDi ~ 0
D7
Text GLabel 3125 4075 0    50   BiDi ~ 0
D6
Text GLabel 3125 4175 0    50   BiDi ~ 0
D5
Text GLabel 3125 4275 0    50   BiDi ~ 0
D4
Text GLabel 3125 4375 0    50   BiDi ~ 0
D3
Text GLabel 3125 4475 0    50   BiDi ~ 0
D2
Text GLabel 3125 4575 0    50   BiDi ~ 0
D1
Text GLabel 3125 4675 0    50   BiDi ~ 0
D0
Text GLabel 3125 4975 0    50   UnSpc ~ 0
GND
Text GLabel 3625 4875 2    50   UnSpc ~ 0
VCC
Text GLabel 3625 4675 2    50   Input ~ 0
IRQ0
Text GLabel 3625 4575 2    50   Input ~ 0
IRQ1
Text GLabel 3625 4475 2    50   Input ~ 0
IRQ2
Text GLabel 3625 4375 2    50   Input ~ 0
IRQ3
Text GLabel 3625 4275 2    50   Input ~ 0
IRQ4
Text GLabel 3625 4175 2    50   Input ~ 0
IRQ5
Text GLabel 3625 4075 2    50   Input ~ 0
IRQ6
Text GLabel 3625 3975 2    50   Input ~ 0
IRQ7
Text GLabel 3625 4775 2    50   Output ~ 0
INT
Text GLabel 3625 3875 2    50   Input ~ 0
INTAK
Text GLabel 3625 3775 2    50   Input ~ 0
A0
Text GLabel 3625 3675 2    50   UnSpc ~ 0
VCC
$Comp
L Connector_Generic:Conn_02x12_Counter_Clockwise PIT8254
U 1 1 615A78B9
P 1350 4175
F 0 "PIT8254" H 1400 4892 50  0000 C CNN
F 1 "Conn_02x12_Counter_Clockwise" H 1400 4801 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 1350 4175 50  0001 C CNN
F 3 "~" H 1350 4175 50  0001 C CNN
	1    1350 4175
	1    0    0    -1  
$EndComp
Text GLabel 1150 3675 0    50   BiDi ~ 0
D7
Text GLabel 1150 3775 0    50   BiDi ~ 0
D6
Text GLabel 1150 3875 0    50   BiDi ~ 0
D5
Text GLabel 1150 3975 0    50   BiDi ~ 0
D4
Text GLabel 1150 4075 0    50   BiDi ~ 0
D3
Text GLabel 1150 4175 0    50   BiDi ~ 0
D2
Text GLabel 1150 4275 0    50   BiDi ~ 0
D1
Text GLabel 1150 4375 0    50   BiDi ~ 0
D0
Text GLabel 1150 4475 0    50   Input ~ 0
OSC1
Text GLabel 1150 4575 0    50   Output ~ 0
IRQ0
Text GLabel 1150 4675 0    50   UnSpc ~ 0
VCC
Text GLabel 1150 4775 0    50   UnSpc ~ 0
GND
Text GLabel 1650 4175 2    50   Input ~ 0
A0
Text GLabel 1650 4075 2    50   Input ~ 0
A1
Text GLabel 1650 3975 2    50   Input ~ 0
CSPIT
Text GLabel 1650 3775 2    50   Input ~ 0
IOW
Text GLabel 1650 3875 2    50   Input ~ 0
IOR
Text GLabel 1650 3675 2    50   UnSpc ~ 0
VCC
Text GLabel 4650 2700 0    50   Output ~ 0
IRQ7
Text GLabel 4650 2800 0    50   Output ~ 0
IRQ6
Text GLabel 4650 2900 0    50   Output ~ 0
IRQ5
Text GLabel 4650 3000 0    50   Output ~ 0
IRQ4
Text GLabel 4650 3100 0    50   Output ~ 0
IRQ1
Text GLabel 4650 1000 0    50   Output ~ 0
IRQ2
Text GLabel 5850 4450 2    50   UnSpc ~ 0
Q0
Text GLabel 4850 4550 0    50   UnSpc ~ 0
Q0
Text GLabel 4650 1200 0    50   Input ~ 0
INT
Text GLabel 4650 3200 0    50   Output ~ 0
INTAK
$Comp
L Device:C C1
U 1 1 61B47691
P 1400 5175
F 0 "C1" H 1515 5221 50  0000 L CNN
F 1 "100nF" H 1515 5130 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1438 5025 50  0001 C CNN
F 3 "~" H 1400 5175 50  0001 C CNN
	1    1400 5175
	1    0    0    -1  
$EndComp
Text GLabel 1400 5325 3    50   UnSpc ~ 0
GND
Text GLabel 1400 5025 1    50   UnSpc ~ 0
VCC
$Comp
L Device:C C2
U 1 1 61B483C6
P 3375 5375
F 0 "C2" H 3490 5421 50  0000 L CNN
F 1 "100nF" H 3490 5330 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3413 5225 50  0001 C CNN
F 3 "~" H 3375 5375 50  0001 C CNN
	1    3375 5375
	1    0    0    -1  
$EndComp
Text GLabel 3375 5525 3    50   UnSpc ~ 0
GND
Text GLabel 3375 5225 1    50   UnSpc ~ 0
VCC
$Comp
L Device:C C3
U 1 1 61B48E8E
P 5350 5675
F 0 "C3" H 5465 5721 50  0000 L CNN
F 1 "100nF" H 5465 5630 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5388 5525 50  0001 C CNN
F 3 "~" H 5350 5675 50  0001 C CNN
	1    5350 5675
	1    0    0    -1  
$EndComp
Text GLabel 5350 5525 1    50   UnSpc ~ 0
VCC
Text GLabel 5350 5825 3    50   UnSpc ~ 0
GND
$EndSCHEMATC
