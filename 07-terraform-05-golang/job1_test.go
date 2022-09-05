package main
import "testing"
func TestMain(t *testing.T) {
	var v float64
	v = multi(1)
	if v != 3.281 {
		t.Error("Pending 3.281, received ", v)
	}
}