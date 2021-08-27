#!/bin/bash
set -e
cd asm
beebasm -v -i anfs418.asm -D BeebDisStartAddr=0x8000 > anfs4128.lst
cd ..
cmp roms/anfs418.orig roms/anfs418.rom || echo "ANFS 4.18 rebuild is not byte-for-byte identical"
