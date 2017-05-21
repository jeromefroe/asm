#include "textflag.h"

TEXT ·lzcount(SB),4,$0-8
  MOVQ x+0(FP), AX
  BYTE $0xf3; BYTE $0x48; BYTE $0x0f; BYTE $0xbd; BYTE $0xc0; // LZCNT (RAX), RAX
  MOVQ AX, ret+8(FP)
  RET
