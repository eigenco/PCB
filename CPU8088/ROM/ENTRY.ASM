        cpu     186

        mov     ax, cs
        mov     cx, 0x3f
        rep     stosw

        call    0xc000:3

        mov     ax, cs
        mov     ds, ax
        mov     si, bios
        
        mov     ax, 0x2000
        mov     es, ax
        mov     di, 0

        mov     cx, 47100
        rep     movsb

        mov     sp, 0x2000
        mov     es, sp
        mov     ds, sp
        mov     ss, sp
        mov     sp, 0xFFFE

        jmp     0x2000:0
bios:
        incbin  "bios.bin"

        times   0xf000-($-$$) nop
        iret
        times   0xfff0-($-$$) nop
        jmp     0xf000:0
        times   11 nop
