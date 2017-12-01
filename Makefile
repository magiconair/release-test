test-snapshot-release:
	goreleaser --rm-dist --skip-publish --snapshot

test-release:
	goreleaser --rm-dist --skip-publish

release:
	goreleaser --rm-dist

.PHONY: release test-release
