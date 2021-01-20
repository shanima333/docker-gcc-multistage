FROM alpine:3.8 AS BUILDER

RUN mkdir /gcc

WORKDIR /gcc

COPY . . 

RUN apk add build-base

RUN gcc hello.c -o test

FROM alpine

WORKDIR /root

COPY --from=BUILDER /gcc/test .

CMD ["./test"]
