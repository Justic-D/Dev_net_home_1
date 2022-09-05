package main

import "fmt"

func multi(m float64)(f float64) {
    f = m * 3.281
    return
}

func main() {
    fmt.Print("Enter meters: ")
    var meters float64
    fmt.Scanf("%f", &meters)

    output := multi(meters)
    fmt.Println("Footage:", output)
}