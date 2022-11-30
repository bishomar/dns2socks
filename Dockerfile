FROM gcc:latest

COPY . /src
WORKDIR /src
RUN  gcc -o dns2socks dns2socks.c -lpthread
CMD ["./dns2socks"]
