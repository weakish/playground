package main

import (
	"fmt"
)

type IsMale bool
type Husband struct {
	isMale IsMale
}

type IsFemale bool
type Wife struct {
	isFemale IsFemale
}

func traditionalMarriage(husband *Husband, wife *Wife) bool {
    if husband.isMale == wife.isFemale { // mismatched type
        return true
    } else {
        return false
    }
}

func main() {
	var husband *Husband = &Husband{ isMale: true }
	var wife *Wife = &Wife{ isFemale: true }
	var matchable bool = traditionalMarriage(husband, wife)
	fmt.Println(matchable)
}