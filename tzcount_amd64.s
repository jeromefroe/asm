#include "textflag.h"

TEXT ·tzcount(SB),4,$0-8
  XORQ AX, AX
  MOVQ x+0(FP), SI
  BYTE $0xf3; BYTE $0x48; BYTE $0x0f; BYTE $0xbc; BYTE $0xc6; // TZCNT (SI), AX
  MOVQ AX, ret+8(FP)
  RET
