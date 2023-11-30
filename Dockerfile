FROM golang:latest
WORKDIR /app
COPY main.go .
COPY basictemplating.html .

RUN go build -o myapp -mod=mod .

EXPOSE 8000

CMD ["./myapp"]
