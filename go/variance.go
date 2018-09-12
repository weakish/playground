package main

import "fmt"

func h(sup func(int) interface{}, x int) {
	sup(x)
}

// subtyping of function, contravariant argument, and convariant result
func sub(x interface{}) int {
	fmt.Println(x)
	return 1
}


// Java support this.
func covariantReturn(x int) int {
	fmt.Println(x)
	return 3
}

func main() {
	h(sub, 2)
	// cannot use sub (type func(interface {}) int) as type func(int) interface {} in argument to h
	h(covariantReturn, 4)
	// cannot use covariantReturn (type func(int) int) as type func(int) interface {} in argument to h
}

