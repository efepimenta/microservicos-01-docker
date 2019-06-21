FROM golang:1.12.6-alpine3.10 as builder

RUN mkdir /tmp/hello

COPY ./hello /tmp/hello

WORKDIR /tmp/hello

RUN go build

WORKDIR /go

FROM golang:1.12.6-alpine3.10

COPY --from=builder /tmp/hello/hello .

ENTRYPOINT ["./hello"]
