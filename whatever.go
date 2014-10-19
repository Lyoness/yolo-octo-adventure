package main

import (
	"fmt"
	"os"
	"time"

	"github.com/codegangsta/cli"
	"github.com/meatballhat/yolo-octo-adventure/sub"
)

func main() {
	app := cli.NewApp()
	app.Action = func(_ *cli.Context) {
		for i := 3; i > 0; i-- {
			time.Sleep(500 * time.Millisecond)
			fmt.Println("wat " + sub.Word())
		}
	}

	app.Run(os.Args)
}
