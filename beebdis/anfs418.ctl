cpu 6502
load $8000 ..\roms\anfs418.orig
save ..\asm\anfs418.asm
symbols anfs418.sym

; ROM header
string $8000 3 ; text in language entry
entry $8003 ; service entry
byte $8006 ; rom type
byte pc ; copyright offset
byte pc ; binary version
stringz pc ; title
stringz pc ; copyright

byte $8488
byte $853e
byte $8681
byte $89ca
byte $89ef
byte $8c98
entry $8c9f
byte $8e61
byte $948b
byte $9491
byte $a3f0
byte $a99e
byte $aa3f
byte $ac80
byte $ac8c
byte $b194
byte $b1b9 3
byte $bc94
byte $8d38
byte $8e59
byte $8e8a 2
byte $8f49

stringz $9249

; SFTODO: L9145 prints out any following non-top-bit set characters, then it transfers control to the address following - if I read this correctly, the low byte of the 2-byte address it transfers control to has to have top bit set - really the disassembly needs to treat these as labels, but I am not doing this yet and just treating them as raw bytes

string $8bb9 3
entry pc

string $8bfb 3
entry pc

string $8bff

string $8ca2 21
