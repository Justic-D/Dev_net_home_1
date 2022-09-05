package main
import "fmt"
import "testing"
func TestMain(t *testing.T) {
	var v []int
	v = NumSel()
	if v[5] != 18 || v[20] != 63 || v[25] != 78 {
		s := fmt.Sprintf("Pending 18 and 64 and 78, received %v and %v and %v", v[5], v[20], v[25])
		t.Error(s)
	}
}