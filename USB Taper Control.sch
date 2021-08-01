EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Power Control - USB - MSP430FR - 500mA - USB Taper"
Date "2021-03-19"
Rev "V1.1"
Comp "oshw"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L dk_USB-DVI-HDMI-Connectors:UE27AC54100 J4
U 1 1 5F7D3DDC
P 10375 1250
F 0 "J4" H 10272 1189 60  0000 R CNN
F 1 "UE27AC54100" H 10272 1295 60  0000 R CNN
F 2 "digikey-footprints:USB_A_Female_UE27AC54100" H 10575 1450 60  0001 L CNN
F 3 "https://www.amphenolcanada.com/ProductSearch/drawings/AC/UE27ACX4X0X.pdf" H 10575 1550 60  0001 L CNN
F 4 "UE27AC54100-ND" H 10575 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "UE27AC54100" H 10575 1750 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 10575 1850 60  0001 L CNN "Category"
F 7 "USB, DVI, HDMI Connectors" H 10575 1950 60  0001 L CNN "Family"
F 8 "https://www.amphenolcanada.com/ProductSearch/drawings/AC/UE27ACX4X0X.pdf" H 10575 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/amphenol-icc-commercial-products/UE27AC54100/UE27AC54100-ND/1972253" H 10575 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN RCPT USB2.0 TYPEA 4POS R/A" H 10575 2250 60  0001 L CNN "Description"
F 11 "Amphenol ICC (Commercial Products)" H 10575 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10575 2450 60  0001 L CNN "Status"
	1    10375 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F7E3F0B
P 1000 2825
F 0 "#PWR0101" H 1000 2575 50  0001 C CNN
F 1 "GND" H 1005 2652 50  0000 C CNN
F 2 "" H 1000 2825 50  0001 C CNN
F 3 "" H 1000 2825 50  0001 C CNN
	1    1000 2825
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5F7E5F5E
P 1525 1875
F 0 "#PWR0102" H 1525 1725 50  0001 C CNN
F 1 "+5V" H 1540 2048 50  0000 C CNN
F 2 "" H 1525 1875 50  0001 C CNN
F 3 "" H 1525 1875 50  0001 C CNN
	1    1525 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2700 1000 2700
Wire Wire Line
	1000 2700 1000 2550
Wire Wire Line
	1000 2700 1000 2825
Connection ~ 1000 2700
$Comp
L Analog_Switch:MAX40200AUK U4
U 1 1 5F80FAA8
P 5475 1250
F 0 "U4" H 5475 1625 50  0000 C CNN
F 1 "MAX40200AUK" H 5700 1525 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5475 1750 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX40200.pdf" H 5475 1750 50  0001 C CNN
	1    5475 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F80FAB5
P 5475 1625
F 0 "#PWR0106" H 5475 1375 50  0001 C CNN
F 1 "GND" H 5480 1452 50  0000 C CNN
F 2 "" H 5475 1625 50  0001 C CNN
F 3 "" H 5475 1625 50  0001 C CNN
	1    5475 1625
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 1625 5475 1550
$Comp
L power:GND #PWR0107
U 1 1 5F822384
P 9975 2600
F 0 "#PWR0107" H 9975 2350 50  0001 C CNN
F 1 "GND" H 9980 2427 50  0000 C CNN
F 2 "" H 9975 2600 50  0001 C CNN
F 3 "" H 9975 2600 50  0001 C CNN
	1    9975 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10075 1450 9975 1450
Wire Wire Line
	2075 2050 2075 2175
$Comp
L power:GND #PWR0108
U 1 1 5F83AD88
P 2075 2475
F 0 "#PWR0108" H 2075 2225 50  0001 C CNN
F 1 "GND" H 2080 2302 50  0000 C CNN
F 2 "" H 2075 2475 50  0001 C CNN
F 3 "" H 2075 2475 50  0001 C CNN
	1    2075 2475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F83AD92
P 2075 2275
F 0 "C2" H 2167 2313 50  0000 L CNN
F 1 "220nF|0603" H 2167 2230 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2075 2275 50  0001 C CNN
F 3 "~" H 2075 2275 50  0001 C CNN
	1    2075 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 2375 2075 2475
Wire Wire Line
	4250 2050 4250 2150
$Comp
L power:GND #PWR0109
U 1 1 5F840C5C
P 4250 3100
F 0 "#PWR0109" H 4250 2850 50  0001 C CNN
F 1 "GND" H 4255 2927 50  0000 C CNN
F 2 "" H 4250 3100 50  0001 C CNN
F 3 "" H 4250 3100 50  0001 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F840C66
P 4250 2925
F 0 "C3" H 4342 2963 50  0000 L CNN
F 1 "4.7uF|0805" H 4342 2880 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4250 2925 50  0001 C CNN
F 3 "~" H 4250 2925 50  0001 C CNN
	1    4250 2925
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5F84387E
P 4250 2250
F 0 "R3" H 4318 2288 50  0000 L CNN
F 1 "2|0603" H 4318 2205 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 2250 50  0001 C CNN
F 3 "~" H 4250 2250 50  0001 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
Text Label 8575 1150 0    51   ~ 0
USB_PWR_OUT
Wire Wire Line
	9325 1150 9325 1425
$Comp
L Device:C_Small C7
U 1 1 5FB26FFE
P 9325 1525
F 0 "C7" H 9417 1563 50  0000 L CNN
F 1 "22uF|0805" H 9417 1480 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9325 1525 50  0001 C CNN
F 3 "~" H 9325 1525 50  0001 C CNN
	1    9325 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 1875 1525 2050
Text GLabel 4950 1350 0    50   Input ~ 0
USB_ENABLE
Wire Wire Line
	1200 2050 1525 2050
$Comp
L Device:R_Small_US R4
U 1 1 5FC7CE07
P 7075 1375
F 0 "R4" H 7143 1413 50  0000 L CNN
F 1 "1K|0603" H 7143 1330 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7075 1375 50  0001 C CNN
F 3 "~" H 7075 1375 50  0001 C CNN
	1    7075 1375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5FC7CE11
P 7075 1550
F 0 "#PWR0133" H 7075 1300 50  0001 C CNN
F 1 "GND" H 7080 1377 50  0000 C CNN
F 2 "" H 7075 1550 50  0001 C CNN
F 3 "" H 7075 1550 50  0001 C CNN
	1    7075 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 1550 7075 1475
Wire Wire Line
	6250 1150 6250 1275
$Comp
L power:GND #PWR0134
U 1 1 5FC8E5E8
P 6250 1575
F 0 "#PWR0134" H 6250 1325 50  0001 C CNN
F 1 "GND" H 6255 1402 50  0000 C CNN
F 2 "" H 6250 1575 50  0001 C CNN
F 3 "" H 6250 1575 50  0001 C CNN
	1    6250 1575
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FC8E5F2
P 6250 1375
F 0 "C4" H 6342 1413 50  0000 L CNN
F 1 "1uF|0805" H 6342 1330 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6250 1375 50  0001 C CNN
F 3 "~" H 6250 1375 50  0001 C CNN
	1    6250 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1475 6250 1575
Wire Wire Line
	8125 1150 8125 1275
$Comp
L power:GND #PWR03
U 1 1 5FD131B1
P 8125 1575
F 0 "#PWR03" H 8125 1325 50  0001 C CNN
F 1 "GND" H 8130 1402 50  0000 C CNN
F 2 "" H 8125 1575 50  0001 C CNN
F 3 "" H 8125 1575 50  0001 C CNN
	1    8125 1575
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5FD131BB
P 8125 1375
F 0 "C11" H 8217 1413 50  0000 L CNN
F 1 "22uF|0805" H 8217 1330 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8125 1375 50  0001 C CNN
F 3 "~" H 8125 1375 50  0001 C CNN
	1    8125 1375
	1    0    0    -1  
$EndComp
Wire Wire Line
	8125 1475 8125 1575
Connection ~ 8125 1150
Wire Wire Line
	8125 1150 9325 1150
$Comp
L MCU_Texas_MSP430:MSP430FR2110IPW16R U2
U 1 1 603CBEBD
P 4625 5250
F 0 "U2" H 4125 5975 50  0000 C CNN
F 1 "MSP430FR2110IPW16R" H 4500 5900 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5075 4550 50  0001 C CIN
F 3 "https://www.ti.com/lit/gpn/msp430fr2110" H 4625 5250 50  0001 C CNN
	1    4625 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4850 2675 4850
Text Label 2200 4850 0    50   ~ 0
TCK
Text Label 2175 4950 0    50   ~ 0
RST
Wire Wire Line
	1500 4950 2550 4950
Wire Wire Line
	1500 5050 2050 5050
Wire Wire Line
	2050 5050 2050 4225
Wire Wire Line
	2050 4225 2550 4225
Wire Wire Line
	3925 4225 3925 4550
Wire Wire Line
	2550 4950 2550 4525
Connection ~ 2550 4950
Wire Wire Line
	2550 4950 2675 4950
Connection ~ 2550 4225
$Comp
L Device:R_Small_US R1
U 1 1 603E228F
P 2550 4425
F 0 "R1" H 2618 4463 50  0000 L CNN
F 1 "47K|0603" H 2618 4380 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2550 4425 50  0001 C CNN
F 3 "~" H 2550 4425 50  0001 C CNN
	1    2550 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4325 2550 4225
$Comp
L dk_USB-DVI-HDMI-Connectors:UP2-AH-1-TH J1
U 1 1 603E9C13
P 1000 2250
F 0 "J1" H 1063 2727 60  0000 C CNN
F 1 "UP2-AH-1-TH" H 1063 2621 60  0000 C CNN
F 2 "digikey-footprints:USB_Male_A_UP2-AH-1-TH" H 1200 2450 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/up2-ah-th.pdf" H 1200 2550 60  0001 L CNN
F 4 "102-3996-ND" H 1200 2650 60  0001 L CNN "Digi-Key_PN"
F 5 "UP2-AH-1-TH" H 1200 2750 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1200 2850 60  0001 L CNN "Category"
F 7 "USB, DVI, HDMI Connectors" H 1200 2950 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/up2-ah-th.pdf" H 1200 3050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/UP2-AH-1-TH/102-3996-ND/6187911" H 1200 3150 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN PLUG USB2.0 TYPEA 4POS R/A" H 1200 3250 60  0001 L CNN "Description"
F 11 "CUI Inc." H 1200 3350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1200 3450 60  0001 L CNN "Status"
	1    1000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2350 1300 2350
Wire Wire Line
	1300 2350 1300 2700
Text GLabel 2525 5150 0    50   Output ~ 0
USB_ENABLE
$Comp
L power:GND #PWR0105
U 1 1 60407FCC
P 3925 6225
F 0 "#PWR0105" H 3925 5975 50  0001 C CNN
F 1 "GND" H 3930 6052 50  0000 C CNN
F 2 "" H 3925 6225 50  0001 C CNN
F 3 "" H 3925 6225 50  0001 C CNN
	1    3925 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 6225 3925 6125
Wire Wire Line
	3925 6125 1675 6125
Wire Wire Line
	1675 6125 1675 5150
Wire Wire Line
	1675 5150 1500 5150
Connection ~ 3925 6125
Wire Wire Line
	3925 6125 3925 6000
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 60412CE6
P 1300 5050
F 0 "J2" H 1218 5467 50  0000 C CNN
F 1 "Conn_01x05" H 1218 5376 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x05_P1.27mm_Vertical" H 1300 5050 50  0001 C CNN
F 3 "~" H 1300 5050 50  0001 C CNN
	1    1300 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2525 5150 2675 5150
Connection ~ 1525 2050
Connection ~ 2075 2050
Wire Wire Line
	2075 2050 2650 2050
$Comp
L Regulator_Linear:TPS76933 U1
U 1 1 6041D54A
P 5375 2775
F 0 "U1" H 5375 3117 50  0000 C CNN
F 1 "TPS76933" H 5375 3026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5375 3100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps769.pdf" H 5375 2725 50  0001 C CNN
	1    5375 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3025 4250 3100
Wire Wire Line
	4850 2675 4975 2675
Wire Wire Line
	4975 2775 4850 2775
Wire Wire Line
	4850 2775 4850 2675
Connection ~ 4850 2675
Wire Wire Line
	5775 2675 5900 2675
$Comp
L power:GND #PWR0112
U 1 1 6043A386
P 4225 4125
F 0 "#PWR0112" H 4225 3875 50  0001 C CNN
F 1 "GND" H 4230 3952 50  0000 C CNN
F 2 "" H 4225 4125 50  0001 C CNN
F 3 "" H 4225 4125 50  0001 C CNN
	1    4225 4125
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 6043A390
P 4225 3975
F 0 "C5" H 4317 4013 50  0000 L CNN
F 1 "4.7uF|0805" H 4317 3930 39  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4225 3975 50  0001 C CNN
F 3 "~" H 4225 3975 50  0001 C CNN
	1    4225 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4225 4075 4225 4125
Wire Wire Line
	4225 3825 4225 3875
Wire Wire Line
	3925 3825 3925 4225
Connection ~ 3925 4225
Wire Wire Line
	3925 3825 4225 3825
Text Notes 4875 4475 0    50   ~ 0
1.5V INT VREF / 10BIT\n1.46mV/LSB
Wire Wire Line
	6250 1150 7075 1150
Connection ~ 6250 1150
Wire Wire Line
	5775 4950 7850 4950
Wire Wire Line
	7850 4950 7850 3975
Wire Wire Line
	8575 1900 8750 1900
$Comp
L Device:R_Small_US R8
U 1 1 6046C06A
P 9975 2200
F 0 "R8" H 10043 2238 50  0000 L CNN
F 1 "0.1|0603" H 10043 2155 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9975 2200 50  0001 C CNN
F 3 "~" H 9975 2200 50  0001 C CNN
	1    9975 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 2300 9975 2500
$Comp
L Device:R_Small_US R7
U 1 1 60471B70
P 8975 1900
F 0 "R7" V 8925 1950 50  0000 L CNN
F 1 "1K|0603" V 9050 1950 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8975 1900 50  0001 C CNN
F 3 "~" H 8975 1900 50  0001 C CNN
	1    8975 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9075 1900 9325 1900
Wire Wire Line
	8750 1900 8750 2025
$Comp
L power:GND #PWR0113
U 1 1 60474BE2
P 8750 2325
F 0 "#PWR0113" H 8750 2075 50  0001 C CNN
F 1 "GND" H 8755 2152 50  0000 C CNN
F 2 "" H 8750 2325 50  0001 C CNN
F 3 "" H 8750 2325 50  0001 C CNN
	1    8750 2325
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 60474BEC
P 8750 2125
F 0 "C6" H 8842 2163 50  0000 L CNN
F 1 "2.2uF|0603" H 8842 2080 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8750 2125 50  0001 C CNN
F 3 "~" H 8750 2125 50  0001 C CNN
	1    8750 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2225 8750 2325
Connection ~ 8750 1900
Wire Wire Line
	8750 1900 8875 1900
Wire Wire Line
	2650 2050 2650 2175
$Comp
L power:GND #PWR0115
U 1 1 60479D18
P 2650 2475
F 0 "#PWR0115" H 2650 2225 50  0001 C CNN
F 1 "GND" H 2655 2302 50  0000 C CNN
F 2 "" H 2650 2475 50  0001 C CNN
F 3 "" H 2650 2475 50  0001 C CNN
	1    2650 2475
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 60479D22
P 2650 2275
F 0 "C1" H 2742 2313 50  0000 L CNN
F 1 "220nF|0603" H 2742 2230 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2650 2275 50  0001 C CNN
F 3 "~" H 2650 2275 50  0001 C CNN
	1    2650 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2375 2650 2475
Connection ~ 2650 2050
Text Label 6225 4950 0    50   ~ 0
CURR_FILT
Text Notes 6725 4875 0    50   ~ 0
<100Hz
$Comp
L dk_LED-Indication-Discrete:LG_R971-KN-1 D1
U 1 1 604A3C27
P 6400 4625
F 0 "D1" H 6350 4378 60  0000 C CNN
F 1 "LG_R971-KN-1" H 6350 4484 60  0000 C CNN
F 2 "digikey-footprints:0805" H 6600 4825 60  0001 L CNN
F 3 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493936/LG%20R971.pdf" H 6600 4925 60  0001 L CNN
F 4 "475-1410-1-ND" H 6600 5025 60  0001 L CNN "Digi-Key_PN"
F 5 "LG R971-KN-1" H 6600 5125 60  0001 L CNN "MPN"
F 6 "Optoelectronics" H 6600 5225 60  0001 L CNN "Category"
F 7 "LED Indication - Discrete" H 6600 5325 60  0001 L CNN "Family"
F 8 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493936/LG%20R971.pdf" H 6600 5425 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/osram-opto-semiconductors-inc/LG-R971-KN-1/475-1410-1-ND/1802598" H 6600 5525 60  0001 L CNN "DK_Detail_Page"
F 10 "LED GREEN DIFFUSED 0805 SMD" H 6600 5625 60  0001 L CNN "Description"
F 11 "OSRAM Opto Semiconductors Inc." H 6600 5725 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6600 5825 60  0001 L CNN "Status"
	1    6400 4625
	-1   0    0    1   
$EndComp
Wire Wire Line
	5775 4850 6100 4850
Wire Wire Line
	6100 4850 6100 4625
Wire Wire Line
	6100 4625 6300 4625
Wire Wire Line
	6600 4625 7100 4625
$Comp
L power:GND #PWR0117
U 1 1 604BBF1B
P 9725 5125
F 0 "#PWR0117" H 9725 4875 50  0001 C CNN
F 1 "GND" H 9730 4952 50  0000 C CNN
F 2 "" H 9725 5125 50  0001 C CNN
F 3 "" H 9725 5125 50  0001 C CNN
	1    9725 5125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9725 5125 9725 5050
Wire Wire Line
	5775 5050 8550 5050
$Comp
L dk_Tactile-Switches:B3F-1000 S1
U 1 1 604C1902
P 9175 5150
F 0 "S1" H 9175 5497 60  0000 C CNN
F 1 "PTS 647 SK38 SMTR2 LFS" H 9175 5391 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_SMD_4.5x4.5mm_TL3315NF160Q" H 9375 5350 60  0001 L CNN
F 3 "https://www.ckswitches.com/media/2567/pts647.pdf" H 9375 5450 60  0001 L CNN
F 4 "PTS 647 SK38 SMTR2 LFS" H 9375 5550 60  0001 L CNN "Digi-Key_PN"
F 5 "PTS 647 SK38 SMTR2 LFS" H 9375 5650 60  0001 L CNN "MPN"
F 6 "Switches" H 9375 5750 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 9375 5850 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 9375 5950 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/B3F-1000/SW400-ND/33150" H 9375 6050 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 9375 6150 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 9375 6250 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9375 6350 60  0001 L CNN "Status"
	1    9175 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9375 5050 9525 5050
Wire Wire Line
	9375 5250 9525 5250
Wire Wire Line
	9525 5250 9525 5050
Connection ~ 9525 5050
Wire Wire Line
	9525 5050 9725 5050
Wire Wire Line
	8975 5250 8775 5250
Wire Wire Line
	8775 5250 8775 5050
Connection ~ 8775 5050
Wire Wire Line
	8775 5050 8975 5050
$Comp
L Device:R_Small_US R9
U 1 1 604D31A4
P 10450 2200
F 0 "R9" H 10518 2238 50  0000 L CNN
F 1 "0.1|0603" H 10518 2155 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10450 2200 50  0001 C CNN
F 3 "~" H 10450 2200 50  0001 C CNN
	1    10450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9975 2500 10450 2500
Wire Wire Line
	10450 2500 10450 2300
Wire Wire Line
	10450 2000 9975 2000
Wire Wire Line
	10450 2100 10450 2000
Connection ~ 9975 2500
Wire Wire Line
	9975 2500 9975 2600
Connection ~ 9975 2000
Wire Wire Line
	9975 2000 9975 2100
Wire Wire Line
	5875 1150 6250 1150
Wire Wire Line
	3350 1150 5075 1150
Wire Wire Line
	3350 2050 4250 2050
Wire Wire Line
	4950 1350 5075 1350
$Comp
L Amplifier_Operational:LPV811DBV U3
U 1 1 60550CE6
P 8800 3975
F 0 "U3" H 8600 4325 50  0000 C CNN
F 1 "LPV811DBV" H 8425 4250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8700 3775 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/lpv812.pdf" H 8800 4175 50  0001 C CNN
	1    8800 3975
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 605576AE
P 8900 3625
F 0 "#PWR0104" H 8900 3475 50  0001 C CNN
F 1 "+3.3V" H 8915 3798 50  0000 C CNN
F 2 "" H 8900 3625 50  0001 C CNN
F 3 "" H 8900 3625 50  0001 C CNN
	1    8900 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3625 8900 3675
$Comp
L power:+3.3V #PWR0110
U 1 1 6055C312
P 3925 3750
F 0 "#PWR0110" H 3925 3600 50  0001 C CNN
F 1 "+3.3V" H 3940 3923 50  0000 C CNN
F 2 "" H 3925 3750 50  0001 C CNN
F 3 "" H 3925 3750 50  0001 C CNN
	1    3925 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 3750 3925 3825
Connection ~ 3925 3825
$Comp
L power:+3.3V #PWR0116
U 1 1 60560FAF
P 7100 4200
F 0 "#PWR0116" H 7100 4050 50  0001 C CNN
F 1 "+3.3V" H 7115 4373 50  0000 C CNN
F 2 "" H 7100 4200 50  0001 C CNN
F 3 "" H 7100 4200 50  0001 C CNN
	1    7100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 604B60B8
P 7100 4425
F 0 "R2" H 7175 4450 50  0000 L CNN
F 1 "1K|0603" H 7175 4375 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7100 4425 50  0001 C CNN
F 3 "~" H 7100 4425 50  0001 C CNN
	1    7100 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4525 7100 4625
Wire Wire Line
	7850 3225 7850 3350
$Comp
L power:GND #PWR0118
U 1 1 605658FD
P 7850 3650
F 0 "#PWR0118" H 7850 3400 50  0001 C CNN
F 1 "GND" H 7855 3477 50  0000 C CNN
F 2 "" H 7850 3650 50  0001 C CNN
F 3 "" H 7850 3650 50  0001 C CNN
	1    7850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60565907
P 7850 3450
F 0 "C8" H 7942 3488 50  0000 L CNN
F 1 "2.2uF|0603" H 7942 3405 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7850 3450 50  0001 C CNN
F 3 "~" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3550 7850 3650
$Comp
L power:+3.3V #PWR0119
U 1 1 6056C71C
P 7850 3225
F 0 "#PWR0119" H 7850 3075 50  0001 C CNN
F 1 "+3.3V" H 7865 3398 50  0000 C CNN
F 2 "" H 7850 3225 50  0001 C CNN
F 3 "" H 7850 3225 50  0001 C CNN
	1    7850 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4075 9200 4075
Wire Wire Line
	9200 4075 9200 4375
Wire Wire Line
	9200 4375 8550 4375
Wire Wire Line
	8250 4375 8250 3975
Wire Wire Line
	8250 3975 8375 3975
Wire Wire Line
	8250 3975 7850 3975
Connection ~ 8250 3975
$Comp
L power:GND #PWR0120
U 1 1 60575434
P 8900 4450
F 0 "#PWR0120" H 8900 4200 50  0001 C CNN
F 1 "GND" H 8905 4277 50  0000 C CNN
F 2 "" H 8900 4450 50  0001 C CNN
F 3 "" H 8900 4450 50  0001 C CNN
	1    8900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4450 8900 4275
Text GLabel 9275 3875 2    50   Input ~ 0
ISNS
Wire Wire Line
	9275 3875 9100 3875
Text GLabel 8575 1900 0    50   Output ~ 0
ISNS
Wire Wire Line
	1525 2050 2075 2050
Wire Wire Line
	2550 4225 3925 4225
Wire Wire Line
	4250 2350 4250 2675
Wire Wire Line
	4850 2675 4250 2675
Connection ~ 4250 2675
Wire Wire Line
	4250 2675 4250 2825
$Comp
L power:+3.3V #PWR0121
U 1 1 605AF7DB
P 5900 2575
F 0 "#PWR0121" H 5900 2425 50  0001 C CNN
F 1 "+3.3V" H 5915 2748 50  0000 C CNN
F 2 "" H 5900 2575 50  0001 C CNN
F 3 "" H 5900 2575 50  0001 C CNN
	1    5900 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2575 5900 2675
Connection ~ 7075 1150
Wire Wire Line
	7075 1150 7075 1275
Wire Wire Line
	3350 1150 3350 2050
Wire Wire Line
	9200 4075 9300 4075
Wire Wire Line
	9850 4075 9850 4125
Connection ~ 9200 4075
$Comp
L power:GND #PWR0122
U 1 1 605D4093
P 9850 4125
F 0 "#PWR0122" H 9850 3875 50  0001 C CNN
F 1 "GND" H 9855 3952 50  0000 C CNN
F 2 "" H 9850 4125 50  0001 C CNN
F 3 "" H 9850 4125 50  0001 C CNN
	1    9850 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4200 7100 4325
$Comp
L Device:R_Small_US R5
U 1 1 605D9821
P 8450 4375
F 0 "R5" V 8400 4425 50  0000 L CNN
F 1 "15K|0603" V 8525 4425 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8450 4375 50  0001 C CNN
F 3 "~" H 8450 4375 50  0001 C CNN
	1    8450 4375
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 4375 8250 4375
Text Notes 9625 3750 0    50   ~ 10
100mV/Amp X 16
$Comp
L Device:R_Small_US R10
U 1 1 605E28CB
P 9400 4075
F 0 "R10" V 9350 4125 50  0000 L CNN
F 1 "1K|0603" V 9475 4125 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9400 4075 50  0001 C CNN
F 3 "~" H 9400 4075 50  0001 C CNN
	1    9400 4075
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 4075 9850 4075
$Comp
L power:GND #PWR0123
U 1 1 605F5601
P 6150 6550
F 0 "#PWR0123" H 6150 6300 50  0001 C CNN
F 1 "GND" H 6155 6377 50  0000 C CNN
F 2 "" H 6150 6550 50  0001 C CNN
F 3 "" H 6150 6550 50  0001 C CNN
	1    6150 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6550 6150 6475
Wire Wire Line
	5800 6475 5950 6475
Wire Wire Line
	5800 6675 5950 6675
Wire Wire Line
	5950 6675 5950 6475
Connection ~ 5950 6475
Wire Wire Line
	5950 6475 6150 6475
Wire Wire Line
	5400 6675 4825 6675
Wire Wire Line
	4825 6475 5400 6475
Wire Wire Line
	4825 6675 4825 6475
Connection ~ 4825 6475
NoConn ~ 10075 1350
NoConn ~ 10075 1250
Text GLabel 9350 3200 2    50   Input ~ 0
ISNS
Wire Wire Line
	9350 3200 8950 3200
Wire Wire Line
	8375 3200 8375 3975
Connection ~ 8375 3975
Wire Wire Line
	8375 3975 8500 3975
$Comp
L Device:R_Small_US R6
U 1 1 6062E035
P 8850 3200
F 0 "R6" V 8800 3250 50  0000 L CNN
F 1 "0|0603" V 8925 3250 39  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8850 3200 50  0001 C CNN
F 3 "~" H 8850 3200 50  0001 C CNN
	1    8850 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 3200 8375 3200
Text Notes 8600 3150 0    50   ~ 10
OPT
$Comp
L dk_Tactile-Switches:B3F-1000 S2
U 1 1 6065AC3B
P 5600 6575
F 0 "S2" H 5600 6922 60  0000 C CNN
F 1 "PTS 647 SK38 SMTR2 LFS" H 5600 6816 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_SMD_4.5x4.5mm_TL3315NF160Q" H 5800 6775 60  0001 L CNN
F 3 "https://www.ckswitches.com/media/2567/pts647.pdf" H 5800 6875 60  0001 L CNN
F 4 "PTS 647 SK38 SMTR2 LFS" H 5800 6975 60  0001 L CNN "Digi-Key_PN"
F 5 "PTS 647 SK38 SMTR2 LFS" H 5800 7075 60  0001 L CNN "MPN"
F 6 "Switches" H 5800 7175 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 5800 7275 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 5800 7375 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/B3F-1000/SW400-ND/33150" H 5800 7475 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 5800 7575 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 5800 7675 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 7775 60  0001 L CNN "Status"
	1    5600 6575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 5250 2525 5250
Text GLabel 2525 5250 0    50   Input ~ 0
SW2
Text GLabel 4675 6475 0    50   Output ~ 0
SW2
Wire Wire Line
	4675 6475 4825 6475
Wire Wire Line
	10250 925  10250 825 
Wire Wire Line
	10250 825  9975 825 
Wire Wire Line
	9975 825  9975 1450
Connection ~ 9975 1450
Connection ~ 9325 1150
Wire Wire Line
	9325 1150 10075 1150
Wire Wire Line
	7075 1150 8125 1150
Wire Wire Line
	9975 1450 9975 1900
Connection ~ 9975 1900
Wire Wire Line
	9975 1900 9975 2000
Wire Wire Line
	9325 1625 9325 1900
Connection ~ 9325 1900
Wire Wire Line
	9325 1900 9975 1900
$Comp
L power:GND #PWR0111
U 1 1 6042F43A
P 5375 3150
F 0 "#PWR0111" H 5375 2900 50  0001 C CNN
F 1 "GND" H 5380 2977 50  0000 C CNN
F 2 "" H 5375 3150 50  0001 C CNN
F 3 "" H 5375 3150 50  0001 C CNN
	1    5375 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3150 5375 3075
Connection ~ 3350 2050
Wire Wire Line
	2650 2050 3350 2050
$Comp
L power:GND #PWR0103
U 1 1 605799EE
P 6150 7175
F 0 "#PWR0103" H 6150 6925 50  0001 C CNN
F 1 "GND" H 6155 7002 50  0000 C CNN
F 2 "" H 6150 7175 50  0001 C CNN
F 3 "" H 6150 7175 50  0001 C CNN
	1    6150 7175
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 7175 6150 7100
Wire Wire Line
	5800 7100 5950 7100
Wire Wire Line
	5800 7300 5950 7300
Wire Wire Line
	5950 7300 5950 7100
Connection ~ 5950 7100
Wire Wire Line
	5950 7100 6150 7100
Wire Wire Line
	5400 7300 4825 7300
Wire Wire Line
	4825 7100 5400 7100
Wire Wire Line
	4825 7300 4825 7100
Connection ~ 4825 7100
$Comp
L dk_Tactile-Switches:B3F-1000 S3
U 1 1 60579A0B
P 5600 7200
F 0 "S3" H 5600 7547 60  0000 C CNN
F 1 "PTS 647 SK38 SMTR2 LFS" H 5600 7441 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_SMD_4.5x4.5mm_TL3315NF160Q" H 5800 7400 60  0001 L CNN
F 3 "https://www.ckswitches.com/media/2567/pts647.pdf" H 5800 7500 60  0001 L CNN
F 4 "PTS 647 SK38 SMTR2 LFS" H 5800 7600 60  0001 L CNN "Digi-Key_PN"
F 5 "PTS 647 SK38 SMTR2 LFS" H 5800 7700 60  0001 L CNN "MPN"
F 6 "Switches" H 5800 7800 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 5800 7900 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 5800 8000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/B3F-1000/SW400-ND/33150" H 5800 8100 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 5800 8200 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 5800 8300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5800 8400 60  0001 L CNN "Status"
	1    5600 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 6675 4825 7100
Connection ~ 4825 6675
$Comp
L power:GND #PWR0114
U 1 1 6058A0F7
P 10450 5550
F 0 "#PWR0114" H 10450 5300 50  0001 C CNN
F 1 "GND" H 10455 5377 50  0000 C CNN
F 2 "" H 10450 5550 50  0001 C CNN
F 3 "" H 10450 5550 50  0001 C CNN
	1    10450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5550 10450 5475
$Comp
L dk_Tactile-Switches:B3F-1000 S4
U 1 1 6058A10C
P 9900 5575
F 0 "S4" H 9900 5922 60  0000 C CNN
F 1 "PTS 647 SK38 SMTR2 LFS" H 9900 5816 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_SMD_4.5x4.5mm_TL3315NF160Q" H 10100 5775 60  0001 L CNN
F 3 "https://www.ckswitches.com/media/2567/pts647.pdf" H 10100 5875 60  0001 L CNN
F 4 "PTS 647 SK38 SMTR2 LFS" H 10100 5975 60  0001 L CNN "Digi-Key_PN"
F 5 "PTS 647 SK38 SMTR2 LFS" H 10100 6075 60  0001 L CNN "MPN"
F 6 "Switches" H 10100 6175 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 10100 6275 60  0001 L CNN "Family"
F 8 "https://omronfs.omron.com/en_US/ecb/products/pdf/en-b3f.pdf" H 10100 6375 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/omron-electronics-inc-emc-div/B3F-1000/SW400-ND/33150" H 10100 6475 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 10100 6575 60  0001 L CNN "Description"
F 11 "Omron Electronics Inc-EMC Div" H 10100 6675 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10100 6775 60  0001 L CNN "Status"
	1    9900 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5475 10250 5475
Wire Wire Line
	10100 5675 10250 5675
Wire Wire Line
	10250 5675 10250 5475
Connection ~ 10250 5475
Wire Wire Line
	10250 5475 10450 5475
Wire Wire Line
	9700 5675 9500 5675
Wire Wire Line
	9500 5675 9500 5475
Connection ~ 9500 5475
Wire Wire Line
	9500 5475 9700 5475
Wire Wire Line
	8550 5475 8550 5050
Wire Wire Line
	8550 5475 9500 5475
Connection ~ 8550 5050
Wire Wire Line
	8550 5050 8775 5050
$EndSCHEMATC
