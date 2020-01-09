package main

import "os"

func main() {
fi, _ := os.Stat("hi")
if fi.IsDir() {
    println("dir")
}
}