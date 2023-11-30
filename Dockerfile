FROM golang:latest

WORKDIR /app

COPY . .

ENV GO111MODULE=on

RUN go mod download
RUN go build -o myapp .

EXPOSE 8000

CMD ["./myapp"]
