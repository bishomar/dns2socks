FROM alpine:edge as dns2socks-builder
LABEL previous-stage=dns2socks-builder

RUN apk add --no-cache gcc musl-dev
COPY . /src
WORKDIR /src
RUN gcc -o dns2socks dns2socks.c -lpthread
CMD ["./dns2socks"]
