#!/bin/bash
# glass compiler: http://www.grauw.nl/projects/glass/
#java -jar  tools/glass/glass-0.5.jar src/main.asm main.bin main.lst
# ./tools/sjasmplus/sjasmplus --raw=main.com --sym=main.sym --lst=main.lst src/main.asm 
#sjasmplus: https://github.com/z00m128/sjasmplus
./tools/sjasmplus/mac/sjasmplus --raw=main.bin  --sym=main.sym --lst=main.lst src/main.asm 
# mv main.com obj/main.com
mv main.bin obj/main.bin
mv main.lst obj/main.lst
mv main.sym obj/main.sym
./tools/emulators/openmsx/mac/openMSX.app/Contents/MacOS/openmsx -script ./tools/emulators/openmsx/emul_start_config.txt