global _opldata
_opldata:
        incbin "opl2.dat"

segment stack class=stack
        resb    512
