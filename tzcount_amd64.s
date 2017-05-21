#include "textflag.h"

TEXT ·tzcount(SB),4,$0-8
  MOVQ x+0(FP), AX
  BYTE $0xf3; BYTE $0x48; BYTE $0x0f; BYTE $0xbc; BYTE $0xc0; // TZCNT (RAX), RAX
  MOVQ AX, ret+8(FP)
  RET
