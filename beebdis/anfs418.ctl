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
stringz $8fe9

string $8ff4 15
entry pc

string $9014 9
entry pc

byte $9022

string $920d 4

string $921a 15

string $922e 7

string $923a 10

byte $9286

stringz $9384
entry pc

stringz $93a7
entry pc

stringz $9432
entry pc

string $953d 10
entry pc

stringz $95b6
entry pc

string $96b5 4
entry pc

byte $97ad 14

byte $9888 17

stringz $a12c

byte $a17c 9

stringz $a262
stringz $a279

string $a291 9

string $a3cf 8

byte $aab1

stringz $ac03
stringz $ac15 

byte $ad1f
byte $ad44
byte $aefb
byte $af2e
byte $af3b
string $b0a5 6
string $b0d2 7
entry pc
string $b0dd 11
entry pc

; SFTODO: L9145 prints out any following non-top-bit set characters, then it transfers control to the address following - if I read this correctly, the low byte of the 2-byte address it transfers control to has to have top bit set - really the disassembly needs to treat these as labels, but I am not doing this yet and just treating them as raw bytes - OK, I think it may infact just return control to the first high bit set

; SFTODO: L96B8 also pulls address after JSR off stack, haven't tried to figure out what exactly it does yet - I am just going to assume based on examining some calls it stops at the zero byte afterwards

string $8bb9 1
entry pc

string $8bfb 1
entry pc

string $8bff

string $8ca2 21
