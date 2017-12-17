GOVERSION=$(shell go version | awk '{print $$3;}')
#bla

release:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist  --debug

test-snapshot-release:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist --skip-publish --snapshot

test-release:
	GOVERSION=$(GOVERSION) goreleaser --rm-dist --skip-publish

.PHONY: release test-release
