FROM golang:1.13.7-buster

WORKDIR /build

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app

EXPOSE 8080
ENTRYPOINT ["/build/app"]
