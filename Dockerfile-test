FROM alpine:3.8

RUN mkdir /gcc

WORKDIR /gcc

COPY . . 

RUN apk add build-base

RUN gcc hello.c -o test

CMD ["./test"]
