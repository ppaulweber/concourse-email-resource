FROM progrium/busybox

RUN glide install && \
    go build -o bin/check check/cmd/*.go && \
    go build -o bin/in in/cmd/*.go && \
    go build -o bin/out out/cmd/*.go

ADD https://curl.haxx.se/ca/cacert.pem /etc/ssl/certs/ca-certificates.crt
ADD bin /opt/resource
