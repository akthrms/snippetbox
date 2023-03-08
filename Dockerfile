FROM golang:1-alpine

WORKDIR /app

COPY ./src/go.mod .
RUN go mod tidy

EXPOSE 4000

CMD [ "go", "run", "./cmd/web" ]
