#include "textflag.h"

TEXT ·lzcount(SB),4,$0-8
  XORQ AX, AX
  MOVQ x+0(FP), SI
  BYTE $0xf3; BYTE $0x48; BYTE $0x0f; BYTE $0xbd; BYTE $0xc6; // LZCNT (SI), AX
  MOVQ AX, ret+8(FP)
  RET
