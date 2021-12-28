# PCB

WARNING! These boards are still very early models and likely contain bugs. They've been observed to work with either no modification or with minor modification (like adding a pullup resistor) during the soldering stage, but be aware that they might not work directly "out of the box" for you or present a risk of something breaking.

Minimal 8088 8 bit ISA board

This board is slightly custom. Signals INTAK and INT have been routed through DRQ2 and DACK2 to allow external PIC-board in the BUS, equally HLDA and HOLD have been routed through DRQ3 and DACK3 to allow external DMAC-board in the BUS. These customizations mean that DMA channels 2 and 3 cannot be used normally. The board will boot when RESET jumper is connected being initially disconnected during power-up. There are 3 other jumpers for allowing operation with or without PIC and DMAC. Can boot into DOS with suitable BIOS (v2). Tested with 8 MHz V20.

![CPU](https://user-images.githubusercontent.com/42321684/147238715-266f36b0-4ccb-42ff-8c7d-9b58b71c59e4.jpg)

Minimal Adlib compatible 8 bit ISA board

This board has its own oscillator and thus requires neither CLK or OSC to be present in the BUS.

![OPL2](https://user-images.githubusercontent.com/42321684/144759407-07a209d9-1a01-4b39-9935-4ddf7eb3c535.jpg)

Minimal OPL3 compatible 8 bit ISA board

This board requires OSC (14.31818 MHz) signal present in the BUS.

![OPL3](https://user-images.githubusercontent.com/42321684/144759451-014f6e3d-c084-4cb4-a21d-e15c3541e254.jpg)

Minimal 512 KB 8 bit ISA RAM board

This board is configured to occupy 0x00000-0x7FFFF.

![MEM](https://user-images.githubusercontent.com/42321684/144759871-59b407a0-5ece-4554-90c9-b33ca91566dd.jpg)

Control 8 bit ISA devices through passive backplane using Raspberry Pi (14.31818 MHz oscillator is included, MEMW/MEMR/IOW/IOR are supported, no IRQ or DMA)

![RPI2ISA](https://user-images.githubusercontent.com/42321684/144759950-11325024-2807-4f16-9a60-fc590ecc4111.jpg)

Board with 8259 Programmable Interrupt Controller and 8254 Programmable Interval Timer

![pic](https://user-images.githubusercontent.com/42321684/147551422-6c66e252-9479-47fd-a0d7-767247ee459f.jpg)

Example of "everything" in a backplane, early video https://www.youtube.com/watch?v=vcOmHcExV3M

![bp](https://user-images.githubusercontent.com/42321684/147551744-881e2e93-02dd-4c99-abde-8836a73b7849.jpg)
