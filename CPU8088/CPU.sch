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
Text GLabel 6025 1525 2    50   BiDi ~ 0
D0
Text GLabel 6025 1425 2    50   BiDi ~ 0
D1
Text GLabel 6025 1325 2    50   BiDi ~ 0
D2
Text GLabel 6025 1225 2    50   BiDi ~ 0
D3
Text GLabel 6025 1125 2    50   BiDi ~ 0
D4
Text GLabel 6025 1025 2    50   BiDi ~ 0
D5
Text GLabel 6025 925  2    50   BiDi ~ 0
D6
Text GLabel 6025 825  2    50   BiDi ~ 0
D7
Text GLabel 6025 3725 2    50   Input ~ 0
A0
Text GLabel 6025 3625 2    50   Input ~ 0
A1
Text GLabel 6025 3525 2    50   Input ~ 0
A2
Text GLabel 6025 3425 2    50   Input ~ 0
A3
Text GLabel 6025 3325 2    50   Input ~ 0
A4
Text GLabel 6025 3225 2    50   Input ~ 0
A5
Text GLabel 6025 3125 2    50   Input ~ 0
A6
Text GLabel 6025 3025 2    50   Input ~ 0
A7
Text GLabel 6025 2925 2    50   Input ~ 0
A8
Text GLabel 6025 2825 2    50   Input ~ 0
A9
Text GLabel 6025 2725 2    50   Input ~ 0
A10
Text GLabel 6025 2625 2    50   Input ~ 0
A11
Text GLabel 6025 2525 2    50   Input ~ 0
A12
Text GLabel 6025 2425 2    50   Input ~ 0
A13
Text GLabel 6025 2325 2    50   Input ~ 0
A14
Text GLabel 6025 2225 2    50   Input ~ 0
A15
Text GLabel 6025 2125 2    50   Input ~ 0
A16
Text GLabel 6025 2025 2    50   Input ~ 0
A17
Text GLabel 3600 3575 2    50   Output ~ 0
A18
Text GLabel 6025 1825 2    50   Input ~ 0
A19
Text GLabel 4625 3725 0    50   UnSpc ~ 0
GND
Text GLabel 4625 3525 0    50   UnSpc ~ 0
VCC
Text GLabel 4625 925  0    50   UnSpc ~ 0
VCC
Text GLabel 4625 1625 0    50   UnSpc ~ 0
GND
Text GLabel 4625 725  0    50   UnSpc ~ 0
GND
Text GLabel 4625 2025 0    50   Input ~ 0
IOR
Text GLabel 4625 1925 0    50   Input ~ 0
IOW
Text GLabel 4625 3425 0    50   Input ~ 0
ALE
Text GLabel 4625 2625 0    50   Output ~ 0
CLK
$Comp
L Connector:Bus_ISA_8bit J4
U 1 1 60DD7EBA
P 5325 2225
F 0 "J4" H 5325 3992 50  0001 C CNN
F 1 "Bus_ISA_8bit" H 5325 3901 50  0000 C CNN
F 2 "adlib:BUS_PC" H 5325 2225 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 5325 2225 50  0001 C CNN
	1    5325 2225
	1    0    0    -1  
$EndComp
Text GLabel 4625 3625 0    50   Input ~ 0
OSC
$Comp
L Connector_Generic:Conn_02x20_Counter_Clockwise CPU_8088
U 1 1 61243CE0
P 1350 1575
F 0 "CPU_8088" H 1400 2600 50  0000 C CNN
F 1 "Conn_02x20_Counter_Clockwise" H 1400 2601 50  0001 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket_LongPads" H 1350 1575 50  0001 C CNN
F 3 "~" H 1350 1575 50  0001 C CNN
	1    1350 1575
	1    0    0    -1  
$EndComp
Text GLabel 1150 2475 0    50   Input ~ 0
CLK
Text GLabel 1650 2575 2    50   UnSpc ~ 0
RESET
Text GLabel 1150 2375 0    50   Input ~ 0
INT
Text GLabel 1150 2175 0    50   BiDi ~ 0
AD0
Text GLabel 1150 2075 0    50   BiDi ~ 0
AD1
Text GLabel 1150 1975 0    50   BiDi ~ 0
AD2
Text GLabel 1150 1875 0    50   BiDi ~ 0
AD3
Text GLabel 1150 1775 0    50   BiDi ~ 0
AD4
Text GLabel 1150 1675 0    50   BiDi ~ 0
AD5
Text GLabel 1150 1575 0    50   BiDi ~ 0
AD6
Text GLabel 1150 1475 0    50   BiDi ~ 0
AD7
Text GLabel 1150 1375 0    50   Output ~ 0
A8
Text GLabel 1150 1275 0    50   Output ~ 0
A9
Text GLabel 1150 1175 0    50   Output ~ 0
A10
Text GLabel 1150 1075 0    50   Output ~ 0
A11
Text GLabel 1150 975  0    50   Output ~ 0
A12
Text GLabel 1150 875  0    50   Output ~ 0
A13
Text GLabel 1150 775  0    50   Output ~ 0
A14
Text GLabel 1650 775  2    50   Output ~ 0
A15
Text GLabel 1650 875  2    50   Output ~ 0
A_16
Text GLabel 1650 975  2    50   Output ~ 0
A_17
Text GLabel 1650 1075 2    50   Output ~ 0
A_18
Text GLabel 1650 1175 2    50   Output ~ 0
A_19
Text GLabel 1150 2575 0    50   UnSpc ~ 0
GND
Text GLabel 1150 675  0    50   UnSpc ~ 0
GND
Text GLabel 4625 825  0    50   UnSpc ~ 0
RESET
Text GLabel 4625 1725 0    50   Input ~ 0
MEMW
Text GLabel 4625 1825 0    50   Input ~ 0
MEMR
Text GLabel 1650 675  2    50   UnSpc ~ 0
VCC
Text GLabel 1650 2275 2    50   Output ~ 0
INTAK
Text GLabel 1650 2075 2    50   Output ~ 0
DEN
Text GLabel 1650 1975 2    50   Output ~ 0
DTR
Text GLabel 1650 1875 2    50   Output ~ 0
IOM
Text GLabel 1650 1775 2    50   Output ~ 0
WR
Text GLabel 1650 1675 2    50   Output ~ 0
HLDA
Text GLabel 1650 1575 2    50   Input ~ 0
HOLD
Text GLabel 1650 1475 2    50   BiDi ~ 0
RD
Text GLabel 1650 1375 2    50   UnSpc ~ 0
VCC
Text GLabel 1150 2275 0    50   UnSpc ~ 0
GND
Text GLabel 1650 2375 2    50   UnSpc ~ 0
GND
$Comp
L Connector_Generic:Conn_02x10_Counter_Clockwise 74LS245
U 1 1 6138E0DD
P 3300 1175
F 0 "74LS245" H 3350 1792 50  0000 C CNN
F 1 "Conn_02x10_Counter_Clockwise" H 3350 1701 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3300 1175 50  0001 C CNN
F 3 "~" H 3300 1175 50  0001 C CNN
	1    3300 1175
	1    0    0    -1  
$EndComp
Text GLabel 3100 875  0    50   BiDi ~ 0
AD0
Text GLabel 3100 975  0    50   BiDi ~ 0
AD1
Text GLabel 3100 1075 0    50   BiDi ~ 0
AD2
Text GLabel 3100 1175 0    50   BiDi ~ 0
AD3
Text GLabel 3100 1275 0    50   BiDi ~ 0
AD4
Text GLabel 3100 1375 0    50   BiDi ~ 0
AD5
Text GLabel 3100 1475 0    50   BiDi ~ 0
AD6
Text GLabel 3100 1575 0    50   BiDi ~ 0
AD7
Text GLabel 3100 775  0    50   Input ~ 0
DTR
Text GLabel 3600 875  2    50   Input ~ 0
DEN
Text GLabel 3600 975  2    50   BiDi ~ 0
D0
Text GLabel 3600 1075 2    50   BiDi ~ 0
D1
Text GLabel 3600 1175 2    50   BiDi ~ 0
D2
Text GLabel 3600 1275 2    50   BiDi ~ 0
D3
Text GLabel 3600 1375 2    50   BiDi ~ 0
D4
Text GLabel 3600 1475 2    50   BiDi ~ 0
D5
Text GLabel 3600 1575 2    50   BiDi ~ 0
D6
Text GLabel 3600 1675 2    50   BiDi ~ 0
D7
Text GLabel 3100 1675 0    50   UnSpc ~ 0
GND
Text GLabel 3600 775  2    50   UnSpc ~ 0
VCC
$Comp
L Connector_Generic:Conn_02x10_Counter_Clockwise 74LS573_1
U 1 1 6138FFFB
P 3300 2425
F 0 "74LS573_1" H 3350 3042 50  0000 C CNN
F 1 "Conn_02x10_Counter_Clockwise" H 3350 2951 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3300 2425 50  0001 C CNN
F 3 "~" H 3300 2425 50  0001 C CNN
	1    3300 2425
	1    0    0    -1  
$EndComp
Text GLabel 3100 2925 0    50   UnSpc ~ 0
GND
Text GLabel 3600 2025 2    50   UnSpc ~ 0
VCC
Text GLabel 3100 2125 0    50   BiDi ~ 0
AD0
Text GLabel 3100 2225 0    50   BiDi ~ 0
AD1
Text GLabel 3100 2325 0    50   BiDi ~ 0
AD2
Text GLabel 3100 2425 0    50   BiDi ~ 0
AD3
Text GLabel 3100 2525 0    50   BiDi ~ 0
AD4
Text GLabel 3100 2625 0    50   BiDi ~ 0
AD5
Text GLabel 3100 2725 0    50   BiDi ~ 0
AD6
Text GLabel 3100 2825 0    50   BiDi ~ 0
AD7
Text GLabel 3600 2125 2    50   Output ~ 0
A0
Text GLabel 3600 2225 2    50   Output ~ 0
A1
Text GLabel 3600 2325 2    50   Output ~ 0
A2
Text GLabel 3600 2425 2    50   Output ~ 0
A3
Text GLabel 3600 2525 2    50   Output ~ 0
A4
Text GLabel 3600 2625 2    50   Output ~ 0
A5
Text GLabel 3600 2725 2    50   Output ~ 0
A6
Text GLabel 3600 2825 2    50   Output ~ 0
A7
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise 74LS138
U 1 1 613935FC
P 3300 4825
F 0 "74LS138" H 3350 5342 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 3350 5251 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 3300 4825 50  0001 C CNN
F 3 "~" H 3300 4825 50  0001 C CNN
	1    3300 4825
	1    0    0    -1  
$EndComp
Text GLabel 3100 4525 0    50   Input ~ 0
RD
Text GLabel 3100 4625 0    50   Input ~ 0
WR
Text GLabel 3100 4725 0    50   Input ~ 0
IOM
Text GLabel 3600 5225 2    50   Output ~ 0
IOR
Text GLabel 3600 5125 2    50   Output ~ 0
IOW
Text GLabel 3600 4825 2    50   Output ~ 0
MEMR
Text GLabel 3600 4725 2    50   Output ~ 0
MEMW
Text GLabel 3600 4525 2    50   UnSpc ~ 0
VCC
Text GLabel 3100 5225 0    50   UnSpc ~ 0
GND
Text GLabel 3100 5025 0    50   UnSpc ~ 0
VCC
Text GLabel 3100 4825 0    50   UnSpc ~ 0
GND
Text GLabel 3100 4925 0    50   UnSpc ~ 0
GND
Text GLabel 1650 2175 2    50   UnSpc ~ 0
ALE
Text GLabel 6025 1725 2    50   UnSpc ~ 0
AEN
$Comp
L Connector_Generic:Conn_02x10_Counter_Clockwise 74LS573_2
U 1 1 6158434D
P 3300 3675
F 0 "74LS573_2" H 3350 4292 50  0000 C CNN
F 1 "Conn_02x10_Counter_Clockwise" H 3350 4201 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 3300 3675 50  0001 C CNN
F 3 "~" H 3300 3675 50  0001 C CNN
	1    3300 3675
	1    0    0    -1  
$EndComp
Text GLabel 3100 3675 0    50   Input ~ 0
A_19
Text GLabel 3100 3575 0    50   Input ~ 0
A_18
Text GLabel 3100 3475 0    50   Input ~ 0
A_17
Text GLabel 3100 3375 0    50   Input ~ 0
A_16
Text GLabel 3100 4175 0    50   UnSpc ~ 0
GND
Text GLabel 3100 3275 0    50   Input ~ 0
HLDA
Text GLabel 3600 3275 2    50   UnSpc ~ 0
VCC
Text GLabel 6025 1925 2    50   Input ~ 0
A18
Text GLabel 3600 3475 2    50   Output ~ 0
A17
Text GLabel 3600 3675 2    50   Output ~ 0
A19
Text GLabel 4625 2725 0    50   Output ~ 0
IRQ7
Text GLabel 4625 2925 0    50   Output ~ 0
IRQ5
Text GLabel 4625 3025 0    50   Output ~ 0
IRQ4
Text GLabel 4625 3125 0    50   Output ~ 0
IRQ3
Text GLabel 4625 1025 0    50   Output ~ 0
IRQ2
Text GLabel 4625 2225 0    50   Output ~ 0
HOLD
Text GLabel 4625 2125 0    50   Input ~ 0
HLDA
Text Notes 7000 6725 0    50   ~ 0
* DRQ2/DACK2 are used as INT/INTAK by external IRQC\n* DRQ3/DACK3 are used as HLDRQ/HLDAK by external DMAC
Text GLabel 3600 2925 2    50   UnSpc ~ 0
ALE
Text GLabel 3600 4175 2    50   UnSpc ~ 0
ALE
Text GLabel 4625 1225 0    50   Output ~ 0
INT
Text GLabel 4625 3225 0    50   Input ~ 0
INTAK
Text GLabel 4625 2825 0    50   Output ~ 0
IRQ6
Text GLabel 1650 2475 2    50   UnSpc ~ 0
VCC
Text GLabel 3600 3375 2    50   Output ~ 0
A16
$Comp
L SamacSys_Parts:ACH-14.31818MHZ-EK CLK8
U 1 1 61B32BEC
P 2500 5625
F 0 "CLK8" H 3350 5890 50  0000 C CNN
F 1 "ACH-14.31818MHZ-EK" H 3350 5799 50  0000 C CNN
F 2 "ACH16000MHZEK" H 4050 5725 50  0001 L CNN
F 3 "" H 4050 5625 50  0001 L CNN
F 4 "Standard Clock Oscillators 14.31818MHz 5V" H 4050 5525 50  0001 L CNN "Description"
F 5 "6.39" H 4050 5425 50  0001 L CNN "Height"
F 6 "815-ACH-14.31818EK" H 4050 5325 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ABRACON/ACH-1431818MHZ-EK?qs=m%252BUhWDcpCfYHkLvwOoxiTw%3D%3D" H 4050 5225 50  0001 L CNN "Mouser Price/Stock"
F 8 "ABRACON" H 4050 5125 50  0001 L CNN "Manufacturer_Name"
F 9 "ACH-14.31818MHZ-EK" H 4050 5025 50  0001 L CNN "Manufacturer_Part_Number"
	1    2500 5625
	1    0    0    -1  
$EndComp
Text GLabel 2500 5625 0    50   UnSpc ~ 0
VCC
Text GLabel 4200 5625 2    50   Output ~ 0
CLK
Text GLabel 4200 5725 2    50   UnSpc ~ 0
GND
Text GLabel 1650 2925 2    50   UnSpc ~ 0
GND
Text GLabel 1150 2925 0    50   UnSpc ~ 0
RESET
Text GLabel 3100 2025 0    50   Input ~ 0
HLDA
Text GLabel 1650 3025 2    50   UnSpc ~ 0
GND
Text GLabel 1150 3225 0    50   UnSpc ~ 0
HOLD
Text GLabel 1650 3125 2    50   UnSpc ~ 0
GND
Text GLabel 1150 3125 0    50   UnSpc ~ 0
INT
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J5
U 1 1 61B4089A
P 1350 3025
F 0 "J5" H 1400 3342 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 1400 3251 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1350 3025 50  0001 C CNN
F 3 "~" H 1350 3025 50  0001 C CNN
	1    1350 3025
	1    0    0    -1  
$EndComp
Text GLabel 1650 3225 2    50   UnSpc ~ 0
GND
Text GLabel 1150 3025 0    50   UnSpc ~ 0
AEN
$Comp
L 8088-FE2010A-SBC-rescue:R R1
U 1 1 61C46A02
P 1400 3875
F 0 "R1" H 1470 3921 50  0000 L CNN
F 1 "1k" H 1470 3830 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1470 3784 50  0001 L CNN
F 3 "" H 1400 3875 50  0000 C CNN
	1    1400 3875
	1    0    0    -1  
$EndComp
Text GLabel 1400 3725 1    50   UnSpc ~ 0
VCC
Text GLabel 1400 4025 3    50   UnSpc ~ 0
RESET
$EndSCHEMATC
