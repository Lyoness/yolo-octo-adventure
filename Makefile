GOPATH_TOP := $(shell echo $${GOPATH%%:*})

.PHONY: heroku
heroku:
	GOPATH=$(GOPATH_TOP) go install -x github.com/meatballhat/yolo-octo-adventure/cmd/...
	mkdir -p ./bin/
	cp -v $(GOPATH_TOP)/bin/yolo-octo-adventure ./bin/
