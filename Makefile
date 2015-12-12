GOPATH_TOP := $(shell echo $${GOPATH%%:*})

GO ?= go
CP ?= cp
MKDIR ?= mkdir -p

.PHONY: heroku
heroku:
	export GOPATH=$(GOPATH_TOP) ; \
		$(GO) install -x $(GO_IMPORT_PATH)/cmd/... && \
		$(MKDIR) ./bin/ && \
		$(CP) -v $(GOPATH_TOP)/bin/yolo-octo-adventure ./bin/
