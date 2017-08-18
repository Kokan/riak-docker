FROM alpine:3.3

RUN apk update && apk add --no-cache git erlang make gcc

RUN apk add erlang-crypto erlang-erl-interface

RUN git clone https://github.com/basho/riak.git \
&& cd riak \
&& make deps
#&& make locked-deps \
#&& make rel
