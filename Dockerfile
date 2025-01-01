# Build Stage
FROM golang:bookworm AS builder
RUN mkdir /build
COPY . /build/
WORKDIR /build
RUN go build -o fim cmd/main.go

# Deploy Stage
FROM debian:bookworm
WORKDIR /app
COPY --from=builder /build/fim /app/
WORKDIR /app

EXPOSE 3000
CMD [ "sh" ]

# EOF