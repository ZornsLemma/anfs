#!/bin/bash
set -e
cd asm
sed -e 's!".*bin"!"../asm/anfs418.rom"!g' < anfs418.asm > anfs418b.asm
beebasm -v -i anfs418b.asm -D BeebDisStartAddr=0x8000 > anfs4128.lst
cd ..
cmp roms/anfs418.orig roms/anfs418.rom || echo "ANFS 4.18 rebuild is not byte-for-byte identical"
