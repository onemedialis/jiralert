FROM golang:1.21 AS builder
WORKDIR /opt/app
COPY . .
RUN CGO_ENABLED=0 go build -o jiralert ./cmd/jiralert

FROM alpine:latest
COPY --from=builder /opt/app/jiralert /bin/jiralert
ENTRYPOINT [ "/bin/jiralert" ]

