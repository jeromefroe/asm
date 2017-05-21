package asm

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestTzcount(t *testing.T) {
	var expected uint64 = 2
	actual := tzcount(4)
	assert.Equal(t, expected, actual)
}
