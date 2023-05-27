FROM golang:1.19

WORKDIR /home/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .

FROM alpine:latest

WORKDIR /home/app

COPY --from=0 /home/app/main .

ENTRYPOINT ["/home/app/main"]