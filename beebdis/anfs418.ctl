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
