FROM scratch
ENV BINARY release-test
COPY ${BINARY} /release-test
ENTRYPOINT ["/release-test"]
