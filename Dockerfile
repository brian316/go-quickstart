# syntax=docker/dockerfile:1
# Build
FROM golang:latest AS build
WORKDIR /app
COPY . /app/
RUN go mod download
RUN go build -o app

# Deploy
WORKDIR /
COPY --from=build /app .
EXPOSE 8080
ENTRYPOINT ["./app"]

