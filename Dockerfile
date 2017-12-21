FROM scratch
COPY release-test /
ENTRYPOINT ["/release-test"]
