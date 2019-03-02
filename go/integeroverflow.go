package main

import (
	"fmt"
)

func main() {
	var one_hundred int8 = 100
	var two_hundred int8 = one_hundred + one_hundred
	fmt.Println(two_hundred) // -56 (IntegerOverflow)
}