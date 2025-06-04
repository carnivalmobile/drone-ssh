FROM alpine:3.22.0

RUN apk update && \
  apk add \
    ca-certificates \
    openssh-client && \
  rm -rf /var/cache/apk/*

ADD drone-ssh /bin/
ENTRYPOINT ["/bin/drone-ssh"]
