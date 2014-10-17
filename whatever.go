package main

import (
	"fmt"
	"time"

	"github.com/meatballhat/yolo-octo-adventure/sub"
)

func main() {
	for i := 3; i > 0; i-- {
		time.Sleep(500 * time.Millisecond)
		fmt.Println("wat " + sub.Word())
	}
}
