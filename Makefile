GOPATH_TOP := $(shell echo $${GOPATH%%:*})

.PHONY: heroku
heroku:
	go get -x github.com/meatballhat/yolo-octo-adventure/...
	mkdir -p ./bin/
	cp -v $(GOPATH_TOP)/bin/yolo-octo-adventure ./bin/
