.text
.global main
main:
start:  mov 0x03, %g2
        mov 0x00, %g3
        mov 0x04, %g4
        mov 0x00, %g5

        vmuld8 %g2, %g4, %g6
        ta 0

