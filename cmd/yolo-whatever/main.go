package main

import (
	"os"

	"github.com/meatballhat/yolo-octo-adventure"
)

func main() {

	app := yolooctoadventure.BuildApp()
	app.Run(os.Args)
}
