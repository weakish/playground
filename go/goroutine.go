package main

import (
	"fmt"
	"time"
)

func say(s string) {
    fmt.Println("eager")
	for i := 0; i < 5; i++ {
		time.Sleep(100 * time.Millisecond)
		fmt.Println(s)
	}
}

func main() {
    fmt.Println("start")
	go say("hello")
	fmt.Println("end")
	say("world")
}