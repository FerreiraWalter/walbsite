FROM golang:latest
WORKDIR /app
COPY main.go .
COPY basictemplating.html .

RUN go build -o myapp .

EXPOSE 8000

CMD ["./myapp"]
