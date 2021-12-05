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
Text GLabel 8000 1725 2    50   BiDi ~ 0
D0
Text GLabel 8000 1625 2    50   BiDi ~ 0
D1
Text GLabel 8000 1525 2    50   BiDi ~ 0
D2
Text GLabel 8000 1425 2    50   BiDi ~ 0
D3
Text GLabel 8000 1325 2    50   BiDi ~ 0
D4
Text GLabel 8000 1225 2    50   BiDi ~ 0
D5
Text GLabel 8000 1125 2    50   BiDi ~ 0
D6
Text GLabel 8000 1025 2    50   BiDi ~ 0
D7
Text GLabel 8000 3925 2    50   Output ~ 0
A0
Text GLabel 8000 3825 2    50   Output ~ 0
A1
Text GLabel 8000 3725 2    50   Output ~ 0
A2
Text GLabel 8000 3625 2    50   Output ~ 0
A3
Text GLabel 8000 3525 2    50   Output ~ 0
A4
Text GLabel 8000 3425 2    50   Output ~ 0
A5
Text GLabel 8000 3325 2    50   Output ~ 0
A6
Text GLabel 8000 3225 2    50   Output ~ 0
A7
Text GLabel 8000 3125 2    50   Output ~ 0
A8
Text GLabel 8000 3025 2    50   Output ~ 0
A9
Text GLabel 6600 3925 0    50   UnSpc ~ 0
GND
Text GLabel 6600 3725 0    50   UnSpc ~ 0
VCC
Text GLabel 6600 1125 0    50   UnSpc ~ 0
VCC
Text GLabel 6600 1825 0    50   UnSpc ~ 0
GND
Text GLabel 6600 925  0    50   UnSpc ~ 0
GND
Text GLabel 6600 2225 0    50   Output ~ 0
~IOR
Text GLabel 6600 2125 0    50   Output ~ 0
~IOW
$Comp
L Connector:Bus_ISA_8bit J4
U 1 1 60DD7EBA
P 7300 2425
F 0 "J4" H 7300 4192 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 7300 4101 50  0000 C CNN
F 2 "adlib:BUS_PC" H 7300 2425 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 7300 2425 50  0001 C CNN
	1    7300 2425
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS688 74LS688
U 1 1 613879CB
P 3300 2600
F 0 "74LS688" H 3844 2646 50  0000 L CNN
F 1 "74LS688" H 3844 2555 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3300 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS688" H 3300 2600 50  0001 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
Text GLabel 3800 1700 2    50   UnSpc ~ 0
~CS
Text GLabel 3300 1400 1    50   UnSpc ~ 0
VCC
Text GLabel 3300 3800 3    50   UnSpc ~ 0
GND
Text GLabel 2800 1700 0    50   UnSpc ~ 0
VCC
Text GLabel 2800 1800 0    50   UnSpc ~ 0
VCC
Text GLabel 2800 1900 0    50   UnSpc ~ 0
VCC
Text GLabel 2800 2000 0    50   UnSpc ~ 0
GND
Text GLabel 2800 2100 0    50   UnSpc ~ 0
GND
Text GLabel 2800 2200 0    50   UnSpc ~ 0
GND
Text GLabel 2800 2300 0    50   UnSpc ~ 0
VCC
Text GLabel 2800 2400 0    50   UnSpc ~ 0
GND
Text GLabel 2800 3300 0    50   Input ~ 0
A2
Text GLabel 2800 3200 0    50   Input ~ 0
A3
Text GLabel 2800 3100 0    50   Input ~ 0
A4
Text GLabel 2800 3000 0    50   Input ~ 0
A5
Text GLabel 2800 2900 0    50   Input ~ 0
A6
Text GLabel 2800 2800 0    50   Input ~ 0
A7
Text GLabel 2800 2700 0    50   Input ~ 0
A8
Text GLabel 2800 2600 0    50   Input ~ 0
A9
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J3
U 1 1 613887D7
P 5050 6475
F 0 "J3" H 5100 6792 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 5100 6701 50  0000 C CNN
F 2 "STX-3100-3N:STX31003N" H 5050 6475 50  0001 C CNN
F 3 "~" H 5050 6475 50  0001 C CNN
	1    5050 6475
	1    0    0    -1  
$EndComp
Text GLabel 4850 6375 0    50   UnSpc ~ 0
GND
Text GLabel 6600 1725 0    50   UnSpc ~ 0
VP
Text GLabel 4850 6475 0    50   UnSpc ~ 0
OUT
Text GLabel 5350 6475 2    50   UnSpc ~ 0
OUT
$Comp
L Device:C C2
U 1 1 6138F966
P 5625 5175
F 0 "C2" H 5740 5221 50  0001 L CNN
F 1 "10uF" H 5740 5175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5663 5025 50  0001 C CNN
F 3 "~" H 5625 5175 50  0001 C CNN
	1    5625 5175
	1    0    0    -1  
$EndComp
Text GLabel 5625 5025 1    50   UnSpc ~ 0
RB
Text GLabel 5625 5325 3    50   UnSpc ~ 0
GND
Text GLabel 6600 3825 0    50   UnSpc ~ 0
OSC
Text GLabel 8000 1925 2    50   UnSpc ~ 0
AEN
Text GLabel 2800 3500 0    50   UnSpc ~ 0
AEN
$Comp
L Connector_Generic:Conn_02x12_Counter_Clockwise YM3812
U 1 1 615FEFCC
P 5050 2275
F 0 "YM3812" H 5100 2992 50  0000 C CNN
F 1 "Conn_02x12_Counter_Clockwise" H 5100 2901 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 5050 2275 50  0001 C CNN
F 3 "~" H 5050 2275 50  0001 C CNN
	1    5050 2275
	1    0    0    -1  
$EndComp
Text GLabel 4850 2875 0    50   UnSpc ~ 0
GND
Text GLabel 4850 1775 0    50   UnSpc ~ 0
VCC
Text GLabel 4850 2075 0    50   Input ~ 0
A0
Text GLabel 4850 1975 0    50   UnSpc ~ 0
~RESET
Text GLabel 4850 2375 0    50   UnSpc ~ 0
~CS
Text GLabel 4850 2175 0    50   Input ~ 0
~IOW
Text GLabel 4850 2275 0    50   Input ~ 0
~IOR
Text GLabel 4850 2675 0    50   BiDi ~ 0
D0
Text GLabel 4850 2775 0    50   BiDi ~ 0
D1
Text GLabel 5350 2875 2    50   BiDi ~ 0
D2
Text GLabel 5350 2775 2    50   BiDi ~ 0
D3
Text GLabel 5350 2675 2    50   BiDi ~ 0
D4
Text GLabel 5350 2575 2    50   BiDi ~ 0
D5
Text GLabel 5350 2475 2    50   BiDi ~ 0
D6
Text GLabel 5350 2375 2    50   BiDi ~ 0
D7
Text GLabel 5350 1875 2    50   Output ~ 0
DAC_CLK
Text GLabel 5350 2175 2    50   Output ~ 0
DAC_SYNC
Text GLabel 5350 2075 2    50   Output ~ 0
DAC_DATA
Text GLabel 5350 1775 2    50   Input ~ 0
CLK358
$Comp
L 74xx:74LS04 74LS04
U 1 1 61601181
P 3300 4350
F 0 "74LS04" H 3300 4667 50  0000 C CNN
F 1 "74LS04" H 3300 4576 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3300 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3300 4350 50  0001 C CNN
	1    3300 4350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 74LS04
U 7 1 61602782
P 3300 5175
F 0 "74LS04" H 3530 5221 50  0000 L CNN
F 1 "74LS04" H 3530 5130 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3300 5175 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3300 5175 50  0001 C CNN
	7    3300 5175
	1    0    0    -1  
$EndComp
Text GLabel 3300 5675 3    50   UnSpc ~ 0
GND
Text GLabel 3300 4675 1    50   UnSpc ~ 0
VCC
Text GLabel 6600 1025 0    50   UnSpc ~ 0
RESET
Text GLabel 3000 4350 0    50   UnSpc ~ 0
RESET
Text GLabel 3600 4350 2    50   UnSpc ~ 0
~RESET
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 61608368
P 3300 6525
F 0 "X1" H 3250 7150 50  0000 L CNN
F 1 "CXO_DIP8" H 3125 7050 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 3750 6175 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 3200 6525 50  0001 C CNN
	1    3300 6525
	1    0    0    -1  
$EndComp
Text GLabel 3300 6825 3    50   UnSpc ~ 0
GND
Text GLabel 3300 6225 1    50   UnSpc ~ 0
VCC
Text GLabel 3000 6525 0    50   UnSpc ~ 0
VCC
Text GLabel 3600 6525 2    50   Output ~ 0
CLK358
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise YM3014B1
U 1 1 61600F9F
P 5050 3300
F 0 "YM3014B1" H 5100 3617 50  0000 C CNN
F 1 "Conn_02x04_Counter_Clockwise" H 5100 3526 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 5050 3300 50  0001 C CNN
F 3 "~" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
Text GLabel 4850 3200 0    50   UnSpc ~ 0
VCC
Text GLabel 5350 3400 2    50   UnSpc ~ 0
GND
Text GLabel 5350 3500 2    50   Input ~ 0
DAC_CLK
Text GLabel 4850 3400 0    50   Input ~ 0
DAC_SYNC
Text GLabel 4850 3500 0    50   Input ~ 0
DAC_DATA
Text GLabel 4850 3300 0    50   UnSpc ~ 0
ToBUFF
Text GLabel 5350 3200 2    50   UnSpc ~ 0
MP
Text GLabel 5350 3300 2    50   UnSpc ~ 0
RB
$Comp
L Amplifier_Operational:TL074 TL074
U 1 1 6160297F
P 5100 3975
F 0 "TL074" H 5100 4342 50  0000 C CNN
F 1 "TL074" H 5100 4251 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5050 4075 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5150 4175 50  0001 C CNN
	1    5100 3975
	1    0    0    -1  
$EndComp
Text GLabel 4800 3875 0    50   UnSpc ~ 0
RB
Text GLabel 4800 4075 0    50   UnSpc ~ 0
MP
Text GLabel 5400 3975 2    50   UnSpc ~ 0
MP
$Comp
L Amplifier_Operational:TL074 TL074
U 2 1 61604B02
P 5100 4575
F 0 "TL074" H 5100 4942 50  0000 C CNN
F 1 "TL074" H 5100 4851 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5050 4675 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5150 4775 50  0001 C CNN
	2    5100 4575
	1    0    0    -1  
$EndComp
Text GLabel 4800 4475 0    50   UnSpc ~ 0
ToBUFF
Text GLabel 5400 4575 2    50   UnSpc ~ 0
OUT
Text GLabel 4800 4675 0    50   UnSpc ~ 0
OUT
$Comp
L Amplifier_Operational:TL074 TL074
U 5 1 61607435
P 5200 5175
F 0 "TL074" H 5158 5221 50  0000 L CNN
F 1 "TL074" H 5158 5130 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5150 5275 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5250 5375 50  0001 C CNN
	5    5200 5175
	1    0    0    -1  
$EndComp
Text GLabel 5100 5475 3    50   UnSpc ~ 0
GND
Text GLabel 5100 4875 1    50   UnSpc ~ 0
VP
$Comp
L Device:C C1
U 1 1 6160A722
P 4625 5175
F 0 "C1" H 4740 5221 50  0001 L CNN
F 1 "10uF" H 4740 5175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4663 5025 50  0001 C CNN
F 3 "~" H 4625 5175 50  0001 C CNN
	1    4625 5175
	1    0    0    -1  
$EndComp
Text GLabel 4625 5325 3    50   UnSpc ~ 0
GND
Text GLabel 4625 5025 1    50   UnSpc ~ 0
VCC
$Comp
L Device:C C3
U 1 1 616595B1
P 6125 5175
F 0 "C3" H 6240 5221 50  0001 L CNN
F 1 "10uF" H 6240 5175 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6163 5025 50  0001 C CNN
F 3 "~" H 6125 5175 50  0001 C CNN
	1    6125 5175
	1    0    0    -1  
$EndComp
Text GLabel 6125 5325 3    50   UnSpc ~ 0
GND
Text GLabel 6125 5025 1    50   UnSpc ~ 0
VP
$EndSCHEMATC
