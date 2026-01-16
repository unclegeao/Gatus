FROM alpine:3.19

WORKDIR /app

ADD https://github.com/TwiN/gatus/releases/latest/download/gatus-linux-amd64 /app/gatus
RUN chmod +x /app/gatus

COPY config.yaml /app/config.yaml

EXPOSE 8080

CMD ["/app/gatus", "-config", "/app/config.yaml"]
