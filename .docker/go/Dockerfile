FROM golang:1.12.6-alpine3.10 as builder

RUN mkdir /tmp/hello

COPY ./hello /tmp/hello

WORKDIR /tmp/hello

RUN go build -ldflags "-w" hello.go

RUN cp hello ../hello-go

RUN rm -rf /tmp/hello/

WORKDIR /go

FROM hello-world

COPY --from=builder /tmp/hello-go .

ENTRYPOINT ["./hello-go"]
