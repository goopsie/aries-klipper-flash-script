download this repo as .zip, extract all files to a USB drive.

**make sure the usb drive shows up in your printer's menus before continuing.**

run "make menuconfig" with settings shown in makemenuconfig.png

drag klipper.bin onto root of sd card.

run "to-hex.bat"

plug drive into printer, turn printer on.

you'll see images come up on-screen.

firmware.hex file will be automatically flashed to stm32 board via voxelab's built in programming tool.

connect klipper host to printer via configured UART pins.


suggested you unplug the ribbon cable connecting the screen to the screen PCB. it's useless unless you wish to revert to stock firmware.


reverting to stock firmware is as easy as booting the printer as normal.

you'll get a prompt on-screen stating something akin to "The firmware failed to update. Press OK to retry", with an "OK" button.

Once you press the button, the LCD board will flash the original firmware to the stm32 board, you'll be able to use it as normal.
