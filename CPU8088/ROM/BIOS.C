extern unsigned char opldata[];

void _cstart_(void) {
  unsigned short x, y, z;
  unsigned char i, j, k;

  x = 0;
  y = 0;
  for(;;) {
    while((inb(0x3da)&8)==0);

    if(y==0) {
      if((j = opldata[x])==0) {
        y = opldata[x+1];
        x = x + 2;
      }
      else {
        while(j!=0) {
          outb(0x388, j); for(k=0; k<6; k++) inb(0x388);
          outb(0x389, opldata[x+1]); for(k=0; k<35; k++) inb(0x388);
          x = x + 2;
          j = opldata[x];
        }
      }
    }
    else {
      y = y - 1;
    }

    while((inb(0x3da)&8)>0);
    putchar('*');
  }
}

#pragma aux outb = \
  "out dx, al" \
  parm [dx] [al];

#pragma aux inb = \
  "in al, dx" \
  parm [dx] \
  modify [al];

#pragma aux putchar = \
  "mov ah, 0x0e" \
  "int 0x10" \
  parm [al];
