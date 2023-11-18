FROM golang:alpine

RUN  apk add && apk update --no-cache git

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o ./bin/cmd/auth ./cmd/auth

EXPOSE 8080

ENTRYPOINT ["./bin/cmd/auth"]
