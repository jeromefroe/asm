package asm

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestLzcount(t *testing.T) {
	var expected uint64 = 61
	actual := lzcount(7)
	assert.Equal(t, expected, actual)
}
