package yolooctoadventure

import (
	"time"

	"github.com/Sirupsen/logrus"
	"github.com/codegangsta/cli"
	"github.com/meatballhat/yolo-octo-adventure/sub"
)

func BuildApp() *cli.App {
	log := logrus.New()
	app := cli.NewApp()
	app.Action = func(_ *cli.Context) {
		for i := 3; i > 0; i-- {
			time.Sleep(500 * time.Millisecond)
			log.Info("wat " + sub.Word())
		}
	}

	return app
}
