.PHONY: heroku
heroku:
	go install -x $(GO_IMPORT_PATH)/... && \
		mkdir -p ./bin/ && \
		find $(shell echo $${GOPATH%%:*})/bin -type f -exec cp {} ./bin/ \;
