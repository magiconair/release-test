GOVERSION := $(shell go version | awk '{print $$3;}')
export PATH := ~/$(GOVERSION)/bin:$(PATH)

ship:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist  --debug

.PHONY: ship
