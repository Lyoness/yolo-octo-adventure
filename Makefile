GOPATH_TOP := $(shell echo $${GOPATH%%:*})

.PHONY: heroku
heroku:
	@echo $${GOPATH}
	@echo
	@find $${GOPATH}/src
	@echo
	@pwd
	@echo
	go install -x github.com/meatballhat/yolo-octo-adventure/...
	mkdir -p ./bin/
	cp -v $(GOPATH_TOP)/bin/yolo-octo-adventure ./bin/
