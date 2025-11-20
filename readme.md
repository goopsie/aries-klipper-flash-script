prerequisite: install [srecord](https://srecord.sourceforge.net/download.html)
(if installing to a non-default directory, "to-hex.bat" will not work out of the box.)

download this repo as .zip, extract all files to a USB drive.

**make sure the usb drive shows up in your printer's menus before continuing.**

run "make menuconfig" with settings shown in makemenuconfig.png

Note, 12Mhz clock only works if klipper/src/stm32/Kconfig is modified with the following:
```
    #default 128000000 if MACH_N32G45x # old line
    default 144000000 if MACH_N32G45x  # new line
```
If you're uncomfortable with/don't know how to modify this file, use "Internal Clock".

drag klipper.bin onto root of USB drive.

run "to-hex.bat"

plug drive into printer, turn printer on.

you'll see images come up on-screen.

firmware.hex file will be automatically flashed to stm32 board via voxelab's built in programming tool.

connect klipper host to printer via configured UART pins.

suggested you unplug either the ribbon cable connecting the screen to the screen PCB, or the ribbon cable running from the screen PCB to the stm32 board.



reverting to stock firmware is as easy as booting the printer as normal. un-solder uart pins, plug back in any cables you may have unplugged.

you'll get a prompt on-screen stating something akin to "The firmware failed to update. Press OK to retry", with an "OK" button.

Once you press the button, the LCD board will flash the original firmware to the stm32 board, you'll be able to use it as normal.
