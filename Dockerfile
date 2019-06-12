FROM alpine:latest
WORKDIR /data
COPY web-test /data
COPY conf /data/conf
COPY static /data/static
COPY views /data/views
EXPOSE 8080
ENV http_proxy 192.168.253.135:38038
ENTRYPOINT ["./web-test"]

