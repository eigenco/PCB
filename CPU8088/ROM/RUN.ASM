        cpu     186
        org     100h

        mov     ax, 0x3d00
        mov     dx, filename
        int     0x21

        mov     bx, 0x2000
        mov     ds, bx
        mov     bx, ax
        mov     ax, 0x3f00
        mov     cx, 47100
        mov     dx, 0
        int     0x21

        mov     ah, 0x3e
        int     0x21

        mov     sp, 0x2000
        mov     es, sp
        mov     ds, sp
        mov     ss, sp
        mov     sp, 0xFFFE

        call    0x2000:0

        int     0x20

filename:
        db      "bios.bin", 0
