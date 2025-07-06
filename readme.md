download this repo as .zip, extract all files to a USB drive.
**make sure the usb drive shows up in your printer's menus before continuing.**


drag klipper.bin into tools/ directory, run "to-hex.bat". ( see makemenuconfig.png for my klipper make menuconfig settings. )
copy resulting "firmware.hex" file to root of usb drive.
plug drive into printer, turn printer on.
if usb drive is formatted correctly, you'll see stuff come up on-screen.
firmware.hex file will be automatically flashed to stm32 board via voxelab's built in programming tool.
connect via UART pins

suggested you unplug the ribbon cable connecting the two boards after flashing, it's useless unless you wish to revert to stock firmware.

reverting to stock firmware is as easy as booting the printer as normal.
you'll get a prompt on-screen stating something akin to "The firmware failed to update. Press OK to retry", with an "OK" button.
Once you press the button, the LCD board will flash the original firmware to the stm32 board, you'll be able to use it as normal.


My printer has to be turned on by connecting BOOT0 to 3.3v and RST to GND, then a few moments later, RST to GND again. I'm not sure what causes this.


