#!/bin/bash
set -e
cd asm
sed -e 's!".*bin"!"../roms/anfs418.rom"!g' < anfs418.asm > anfs418b.asm
# TODO: .lst filename is "wrong", but won't fix just yet in case it causes more confusion
beebasm -v -i anfs418b.asm -D BeebDisStartAddr=0x8000 > anfs4128.lst
cd ..
cmp roms/anfs418.orig roms/anfs418.rom || echo "ANFS 4.18 rebuild is not byte-for-byte identical"
