#!/bin/bash

#Definiendo una regla
#objetivo: dependencias
all: emulator main.bin 
	#Instrucciones para conseguir el objetivo
	mv main.bin obj/main.bin

main.bin: src/main.asm
	java -jar  tools/glass/glass-0.5.jar src/main.asm main.bin main.lst

emulator:
	./tools/emulators/openmsx/mac/openMSX.app/Contents/MacOS/openmsx -script ./tools/emulators/openmsx/emul_start_config.txt
