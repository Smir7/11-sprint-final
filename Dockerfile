FROM golang:1.22

ENV dataENV = "${CGO_ENABLED=0 GOOS=linux GOARCH=amd64}"

WORKDIR /app

COPY . .

RUN go mod download

RUN dataENV go build -o /say_way

CMD ["/say_way"]