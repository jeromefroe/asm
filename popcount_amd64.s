#include "textflag.h"

// func popcount(x uint64) uint64
TEXT ·popcount(SB), NOSPLIT, $0-8
  POPCNTQ x+0(FP), AX
  MOVQ    AX, ret+8(FP)
  RET
