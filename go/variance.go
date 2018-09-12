package main

import "fmt"

func h(sup func(int) interface{}, x int) {
	sup(x)
}

func sub(x interface{}) int {
	fmt.Println(x)
	return 1
}

func main() {
	h(sub, 2)
	// cannot use sub (type func(interface {}) int) as type func(int) interface {} in argument to h
}

