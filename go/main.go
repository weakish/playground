package main

import (
	"bufio"
	"fmt"
  "os"
	"os/exec"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		url := scanner.Text()
		cmd := exec.Command("you-get", url)
		if cmd.Run() != nil {
			fmt.Println(url)
		}
	}
}
