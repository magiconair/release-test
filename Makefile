release:
	GOVERSION=$$(go version | awk '{print $$3;}') goreleaser --rm-dist  --debug

test-snapshot-release:
	goreleaser --rm-dist --skip-publish --snapshot

test-release:
	goreleaser --rm-dist --skip-publish

.PHONY: release test-release
