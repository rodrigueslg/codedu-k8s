FROM golang:1.16
WORKDIR /go/delivery
COPY . .
RUN go build -o server .
CMD ["./server"]
