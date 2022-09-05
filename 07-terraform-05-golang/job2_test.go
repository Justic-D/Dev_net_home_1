package main
import "testing"
func TestMain(t *testing.T) {
	var v int
	v = MinNum([]int{48,96,86,68,57,82})
	if v != 48 {
		t.Error("Pending 48, received ", v)
	}
}