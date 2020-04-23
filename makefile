
build:
	nim c --os:standalone --out:bin/ src/$(FILE).nim

upload: build
	avr-objcopy -O ihex -R .eeprom bin/$(FILE) hex/$(FILE).hex
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:hex/$(FILE).hex
