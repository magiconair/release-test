GOVERSION := $(shell go version | awk '{print $$3;}')
export PATH := ~/$(GOVERSION)/bin:$(PATH)

release-multi-go:
	$(MAKE) GOVERSION=go1.8.5 release
	$(MAKE) GOVERSION=go1.9.2 release

release:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist  --debug

test-snapshot-release:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist --skip-publish --snapshot

test-release:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist --skip-publish

.PHONY: release test-release
