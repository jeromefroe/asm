NOSPLIT,$0-16

NOSPLIT = 4
(For TEXT items.) Don't insert the preamble to check if the stack must be split. The frame for the routine, plus anything it calls, must fit in the spare space at the top of the stack segment. Used to protect routines such as the stack splitting code itself.

16 means called with 16 bytes of arguments

0 is stack frame size, ie how many more bytes you need past those passed as arguments

go's AX register and friends are equivalent to the RAX register and friends in x86 assmebly