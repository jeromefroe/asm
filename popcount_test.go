package asm

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestPopcount(t *testing.T) {
	var expected uint64 = 3
	actual := popcount(7)
	assert.Equal(t, expected, actual)
}
