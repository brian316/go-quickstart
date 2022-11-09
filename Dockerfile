# syntax=docker/dockerfile:1
# Build
FROM registry.access.redhat.com/ubi8/go-toolset
WORKDIR /app
COPY . /app/
RUN go mod download
RUN go build -o app

# Deploy
WORKDIR /
COPY --from=build /app .
EXPOSE 8080
ENTRYPOINT ["./app"]

