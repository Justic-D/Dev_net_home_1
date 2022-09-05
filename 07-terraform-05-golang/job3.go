package main

import (
    "fmt"
    "strconv"
    "strings"
)

func NumSel ()(s []int) {
	for i := 1;  i <= 100; i ++ {
		if	i % 3 == 0 {
			s = append(s, i)
		}
	}
	return
}

func main() {
	Result1 := NumSel()

    // The int slice we are converting to a string.
    values := Result1
    valuesText := []string{}

    // Create a string slice using strconv.Itoa.
    // ... Append strings to it.
    for i := range values {
        number := values[i]
        text := strconv.Itoa(number)
        valuesText = append(valuesText, text)
    }

    // Join our string slice.
    Result2 := strings.Join(valuesText, ", ")
    fmt.Println("Numbers may be divided into 3: ("+Result2+")")
}