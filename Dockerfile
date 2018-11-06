# This file is a template, and might need editing before it works on your project.
FROM golang:1.11.2 AS builder

WORKDIR /usr/src/app

COPY . .
RUN go-wrapper download
RUN go build -v

FROM buildpack-deps:18.10

WORKDIR /usr/local/bin

COPY --from=builder /usr/src/app/app .
CMD ["./app"]
