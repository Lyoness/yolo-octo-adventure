GOPATH_TOP := $(shell echo $${GOPATH%%:*})

GO ?= go
CP ?= cp
MKDIR ?= mkdir -p

.PHONY: heroku
heroku:
	export GOPATH=$(GOPATH_TOP) ; \
		$(GO) install -x github.com/meatballhat/yolo-octo-adventure/cmd/... && \
		$(MKDIR) ./bin/ && \
		$(CP) -v $(GOPATH_TOP)/bin/yolo-octo-adventure ./bin/
