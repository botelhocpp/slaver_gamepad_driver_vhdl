# Slaver Gamepad Driver in VHDL

A driver for a generic gamepad I found in my house called "Slaver" (for some reason). I made this driver in VHDL, targetting a Zync-7000 FPGA.

## The Gamepad

The gamepad have 4 directional buttons and two action buttons (A and B):

![image](https://github.com/botelhocpp/slaver_gamepad_driver_vhdl/blob/main/gamepad.jpg)

## Pinout

The gamepad port has 8 pins, but only 6 are used. From left to right:

| 1 2 3 4 |

| o o o o |

| o o o o |

| 5 6 7 8 |

The internal buttons connect the data pins to one of two common (COM) pins: one for the arrows and one for the action buttons. Some buttons use the same data pin, but have different COMs to differentiate. Thats the case for Left/A, and Right/B. So, you have to use "pull-down" (or pull-up) resistors and alternate the COMs to find out which button have been pressed.

1) Up
2) N/C
3) N/C
4) Arrows COM
5) Down
6) Left/A
7) Right/B
8) Action buttons COM 
