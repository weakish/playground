package main

import (
	"fmt"
)

func f(s string) string {
	s = "hi" // reassign
	return s
}

type MyString string

func (s MyString) M() MyString {
	s = "hi" // reassign
	return s
}

func main() {
	fmt.Println(f("hello"))
	var hello MyString = "hello"
	fmt.Println(hello.M())
}