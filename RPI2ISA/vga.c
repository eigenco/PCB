#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <unistd.h>

#define LA	23
#define IOW	25
#define IOR	11
#define MEMR	9
#define MEMW	10
#define RESET	22

#define D0	27
#define D1	18
#define D2	17
#define D3	15
#define D4	14
#define D5	4
#define D6	3
#define D7	2

#define A0	21
#define A1	20
#define A2	26
#define A3	16
#define A4	19
#define A5	13
#define A6	12
#define A7	6
#define A8	5
#define A9	1
#define A10	0
#define A11	7

#define ATA0 0x300
#define ATA1 0x302
#define ATA2 0x304
#define ATA3 0x306
#define ATA4 0x308
#define ATA5 0x30A
#define ATA6 0x30C
#define ATA7 0x30E

unsigned char buffer[64000];

void setaddr(unsigned short addr) {
  digitalWrite(A0, addr & 1); addr >>= 1;
  digitalWrite(A1, addr & 1); addr >>= 1;
  digitalWrite(A2, addr & 1); addr >>= 1;
  digitalWrite(A3, addr & 1); addr >>= 1;
  digitalWrite(A4, addr & 1); addr >>= 1;
  digitalWrite(A5, addr & 1); addr >>= 1;
  digitalWrite(A6, addr & 1); addr >>= 1;
  digitalWrite(A7, addr & 1); addr >>= 1;
  digitalWrite(A8, addr & 1); addr >>= 1;
  digitalWrite(A9, addr & 1); addr >>= 1;
  digitalWrite(A10, addr & 1); addr >>= 1;
  digitalWrite(A11, addr & 1);
}

void setdata(unsigned char data) {
  digitalWrite(D0, data & 1); data >>= 1;
  digitalWrite(D1, data & 1); data >>= 1;
  digitalWrite(D2, data & 1); data >>= 1;
  digitalWrite(D3, data & 1); data >>= 1;
  digitalWrite(D4, data & 1); data >>= 1;
  digitalWrite(D5, data & 1); data >>= 1;
  digitalWrite(D6, data & 1); data >>= 1;
  digitalWrite(D7, data & 1);
}

unsigned char getdata() {
  unsigned char data;

  data  = digitalRead(D7); data <<= 1;
  data |= digitalRead(D6); data <<= 1;
  data |= digitalRead(D5); data <<= 1;
  data |= digitalRead(D4); data <<= 1;
  data |= digitalRead(D3); data <<= 1;
  data |= digitalRead(D2); data <<= 1;
  data |= digitalRead(D1); data <<= 1;
  data |= digitalRead(D0);

  return data;
}

void setinput() {
  pinMode(D0, INPUT);
  pinMode(D1, INPUT);
  pinMode(D2, INPUT);
  pinMode(D3, INPUT);
  pinMode(D4, INPUT);
  pinMode(D5, INPUT);
  pinMode(D6, INPUT);
  pinMode(D7, INPUT);
}

void setoutput() {
  pinMode(D0, OUTPUT);
  pinMode(D1, OUTPUT);
  pinMode(D2, OUTPUT);
  pinMode(D3, OUTPUT);
  pinMode(D4, OUTPUT);
  pinMode(D5, OUTPUT);
  pinMode(D6, OUTPUT);
  pinMode(D7, OUTPUT);
}

unsigned char inb(unsigned short addr) {
  unsigned char data;

  setinput();
  setaddr(0);
  digitalWrite(LA, 1);
  digitalWrite(LA, 0);
  setaddr(addr & 0xFFF);
  digitalWrite(IOR, 0);
  digitalWrite(IOR, 0);
  digitalWrite(IOR, 0);
  data = getdata();
  digitalWrite(IOR, 1);
  digitalWrite(IOR, 1);
  digitalWrite(IOR, 1);

  return data;
}

void outb(unsigned short addr, unsigned char data) {
  setoutput();
  setaddr(0);
  digitalWrite(LA, 1);
  digitalWrite(LA, 0);
  setaddr(addr & 0xFFF);
  setdata(data);
  digitalWrite(IOW, 0);
  digitalWrite(IOW, 0);
  digitalWrite(IOW, 0);
  digitalWrite(IOW, 1);
  digitalWrite(IOW, 1);
  digitalWrite(IOW, 1);
}

void memw(unsigned int addr, unsigned char data) {
  int i;

  setoutput();
  setaddr((addr >> 12) & 0xFF);
  digitalWrite(LA, 1);
  digitalWrite(LA, 0);
  setaddr(addr & 0xFFF);
  setdata(data);
  digitalWrite(MEMW, 0);
  digitalWrite(MEMW, 0);
  digitalWrite(MEMW, 0);
  digitalWrite(MEMW, 1);
  digitalWrite(MEMW, 1);
  digitalWrite(MEMW, 1);
}

unsigned char memr(unsigned int addr) {
  unsigned char data, l;

  setinput();
  setaddr((addr >> 12) & 0xFF);
  digitalWrite(LA, 1);
  digitalWrite(LA, 0);
  setaddr(addr & 0xFFF);
  digitalWrite(MEMR, 0);
  digitalWrite(MEMR, 0);
  digitalWrite(MEMR, 0);
  data = getdata();
  digitalWrite(MEMR, 1);
  digitalWrite(MEMR, 1);
  digitalWrite(MEMR, 1);

  return data;
}

void wr_adlib(unsigned char reg, unsigned char value) {
  outb(0x388, reg); usleep(4);
  outb(0x389, value); usleep(23);
}

void play_music() {
  int song_register, song_data, song_offset = 0, song_wait;
  int i, j, k;

  for(;;) {
    song_register = buffer[song_offset];
    song_offset++;
    if(song_register==0) {
      song_wait  = (buffer[song_offset+1] << 8) | buffer[song_offset+0];
      song_offset += 2;
      usleep(1786*song_wait);
    } else {
      song_data = buffer[song_offset]; song_offset++;
      song_wait = buffer[song_offset]; song_offset++;
      wr_adlib(song_register, song_data);
      usleep(1786*song_wait);
    }
    if(song_offset>57300) {
      for(i=0; i<256; i++)
        wr_adlib(i, 0);
      exit(0);
    }
  }
}

void init_vga(void) {
  unsigned int i, j, k;

  // ET4000: set key
  outb(0x3bf, 3);
  outb(0x3d8, 0xa0);

  // ET4000: set clocks
  outb(0x3c4, 0x07);
  outb(0x3c5, 0xfc);

  // MISC register at port 3c2
  outb(0x3c2, 0x63);

  // ATC registers at port 3c0
  for(i=0; i<0x10; i++) {
    inb(0x3da);
    outb(0x3c0, i);
    outb(0x3c0, i);
  }
  outb(0x3c0, 0x30); outb(0x3c0, 0x41);
  outb(0x3c0, 0x31); outb(0x3c0, 0x00);
  outb(0x3c0, 0x32); outb(0x3c0, 0x0f);
  outb(0x3c0, 0x33); outb(0x3c0, 0x00);
  outb(0x3c0, 0x34); outb(0x3c0, 0x00);

  // SEQ registers at port 3c4
  outb(0x3c4, 0x00); outb(0x3c5, 0x03);
  outb(0x3c4, 0x01); outb(0x3c5, 0x01);
  outb(0x3c4, 0x02); outb(0x3c5, 0x0f);
  outb(0x3c4, 0x03); outb(0x3c5, 0x00);
  outb(0x3c4, 0x04); outb(0x3c5, 0x0e);

  // GDC registers at port 3ce
  outb(0x3ce, 0x00); outb(0x3cf, 0x00);
  outb(0x3ce, 0x01); outb(0x3cf, 0x00);
  outb(0x3ce, 0x02); outb(0x3cf, 0x00);
  outb(0x3ce, 0x03); outb(0x3cf, 0x00);
  outb(0x3ce, 0x04); outb(0x3cf, 0x00);
  outb(0x3ce, 0x05); outb(0x3cf, 0x40);
  outb(0x3ce, 0x06); outb(0x3cf, 0x05);
  outb(0x3ce, 0x07); outb(0x3cf, 0x0f);
  outb(0x3ce, 0x08); outb(0x3cf, 0xff);

  // CRTC registers at port 3d4
  outb(0x3d4, 0x11); outb(0x3d5, 0x00);
  outb(0x3d4, 0x00); outb(0x3d5, 0x5f);
  outb(0x3d4, 0x01); outb(0x3d5, 0x4f);
  outb(0x3d4, 0x02); outb(0x3d5, 0x50);
  outb(0x3d4, 0x03); outb(0x3d5, 0x82);
  outb(0x3d4, 0x04); outb(0x3d5, 0x54);
  outb(0x3d4, 0x05); outb(0x3d5, 0x80);
  outb(0x3d4, 0x06); outb(0x3d5, 0xbf);
  outb(0x3d4, 0x07); outb(0x3d5, 0x1f);
  outb(0x3d4, 0x08); outb(0x3d5, 0x00);
  outb(0x3d4, 0x09); outb(0x3d5, 0x41);
  outb(0x3d4, 0x0a); outb(0x3d5, 0x00);
  outb(0x3d4, 0x0b); outb(0x3d5, 0x00);
  outb(0x3d4, 0x0c); outb(0x3d5, 0x00);
  outb(0x3d4, 0x0d); outb(0x3d5, 0x00);
  outb(0x3d4, 0x0e); outb(0x3d5, 0x00);
  outb(0x3d4, 0x0f); outb(0x3d5, 0x00);
  outb(0x3d4, 0x10); outb(0x3d5, 0x9c);
  outb(0x3d4, 0x11); outb(0x3d5, 0x8e);
  outb(0x3d4, 0x12); outb(0x3d5, 0x8f);
  outb(0x3d4, 0x13); outb(0x3d5, 0x28);
  outb(0x3d4, 0x14); outb(0x3d5, 0x40);
  outb(0x3d4, 0x15); outb(0x3d5, 0x96);
  outb(0x3d4, 0x16); outb(0x3d5, 0xb9);
  outb(0x3d4, 0x17); outb(0x3d5, 0xa3);
  outb(0x3d4, 0x18); outb(0x3d5, 0xff);

  /* Enable video */
  outb(0x3c0, 0x20);
  inb(0x3da);

  /* set palette */
  outb(0x3c6, 0xff); // PEL mask
  outb(0x3c8, 0);    // Palette register
  for(i=0; i<64; i++) {
    outb(0x3c9, i & 63);
    outb(0x3c9, 0);
    outb(0x3c9, 0);
  }
  for(i=0; i<64; i++) {
    outb(0x3c9, 0);
    outb(0x3c9, i & 63);
    outb(0x3c9, 0);
  }
  for(i=0; i<64; i++) {
    outb(0x3c9, 0);
    outb(0x3c9, 0);
    outb(0x3c9, i & 63);
  }
  for(i=0; i<64; i++) {
    outb(0x3c9, i & 63);
    outb(0x3c9, i & 63);
    outb(0x3c9, i & 63);
  }
}

int main() {
  FILE *f;
  int i, j, k;

  f = fopen("le.adl", "rb");
  fread(buffer, 1, 57306, f);
  fclose(f);

  wiringPiSetupGpio();

  pinMode(LA, OUTPUT); digitalWrite(LA, 0);
  pinMode(IOW, OUTPUT);
  pinMode(IOR, OUTPUT);
  pinMode(MEMW, OUTPUT);
  pinMode(MEMR, OUTPUT);
  pinMode(RESET, OUTPUT);
  digitalWrite(RESET, 1); usleep(100000);
  digitalWrite(RESET, 0); usleep(100000);
  digitalWrite(IOW, 1);
  digitalWrite(IOR, 1);
  digitalWrite(MEMW, 1);
  digitalWrite(MEMR, 1);

  // CONFIGURE ADDRESS PINS
  pinMode(A0, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A4, OUTPUT);
  pinMode(A5, OUTPUT);
  pinMode(A6, OUTPUT);
  pinMode(A7, OUTPUT);
  pinMode(A8, OUTPUT);
  pinMode(A9, OUTPUT);
  pinMode(A10, OUTPUT);
  pinMode(A11, OUTPUT);

  // CONFIGURE DATA PINS
  pinMode(D0, INPUT);
  pinMode(D1, INPUT);
  pinMode(D2, INPUT);
  pinMode(D3, INPUT);
  pinMode(D4, INPUT);
  pinMode(D5, INPUT);
  pinMode(D6, INPUT);
  pinMode(D7, INPUT);

  // TEST VGA
  init_vga();
  usleep(1000000);

  // TEST XTCF
  printf("Reading first CF sector...\n");
  outb(ATA1, 0x01);
  outb(ATA7, 0xEF);
  while((inb(ATA7)&0x80)!=0);
  outb(ATA6, 0xA0|0x00); // HEAD
  outb(ATA2, 1);         // SECTORS TO READ
  outb(ATA3, 1);         // SECTOR (1-)
  outb(ATA4, 0);         // lo(CYLINDER)
  outb(ATA5, 0);         // hi(CYLINDER)
  outb(ATA7, 0x20);      // READ
  while((inb(ATA7)&8)==0);
  for(i=0; i<512; i++) {
    printf("%.2x ", inb(ATA0));
    if(i%24==23) printf("\n");
  }
  printf("\n");

  // PIT
  outb(0x43, 0x36);
  outb(0x40, 0xff);
  outb(0x40, 0x50);
  outb(0x41, 0);
  outb(0x41, 0);

  // PIC
  outb(0x20, 0x16);
  outb(0x21, 0x08);
  outb(0x21, 0x00);
  outb(0x21, 0x00);

  // DISABLE ALL INTERRUPTS
  outb(0x21, 0xff);

  // ENABLE INTERRUPT 0 (PIT)
  outb(0x21, 0xfe);

  // VGA RANDOM PATTERN
  for(k=0; k<10; k++) {
    i = 0;
    for(j=0; j<64000; j++)
      memw(0xA0000 + i++, rand()%256);
  }

  // TEST MEMORIES
  printf("\nReading ROM...\n");
  for(j=0; j<(8192+4096)/16; j++) {
    printf("%.5X ", 0xFD000+16*j);
    for(i=0; i<16; i++)
      printf("%.2X ", memr(0xFD000+i+16*j));
    printf("\n");
  }

  for(j=0; j<4; j++)
    for(i=0; i<16; i++)
      memw(0x10000+i+16*j, rand()%256);
  printf("\nReading RAM...\n");
  for(j=0; j<4; j++) {
    printf("%.5X ", 0x10000+16*j);
    for(i=0; i<16; i++)
      printf("%.2X ", memr(0x10000+i+16*j));
    printf("\n");
  }

  printf("\nWriting RAM...\n");
  for(j=0; j<4; j++) {
    printf("%.5X ", 0x10000+16*j);
    for(i=0; i<16; i++) {
      k = (i+16*j)%256;
      memw(0x10000+i+16*j, k);
      printf("%.2X ", k);
    }
    printf("\n");
  }

  printf("\nReading RAM...\n");
  for(j=0; j<4; j++) {
    printf("%.5X ", 0x10000+16*j);
    for(i=0; i<16; i++)
      printf("%.2X ", memr(0x10000+i+16*j));
    printf("\n");
  }

  play_music();

  return 0;
}
