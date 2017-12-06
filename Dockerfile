FROM scratch
ENV BINARY release-test
COPY ${BINARY} /
ENTRYPOINT ["/${BINARY}"]
