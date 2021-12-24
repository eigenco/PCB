del *.com
cycles max
nasm -O0 -fobj opldata.asm -o opldata.obj
wcc -od -0 -d0 -ms -s -zl -nt=txt bios.c
wlink @bios.lnk
nasm -O0 -fbin run.asm -o run.com
nasm -O0 -fbin entry.asm -o entry.bin
copy /b entry.bin+entry.bin+entry.bin+entry.bin+entry.bin+entry.bin+entry.bin+entry.bin bios.rom
