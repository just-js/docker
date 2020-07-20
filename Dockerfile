FROM debian:stretch-slim
RUN apt update
RUN apt install -y g++ curl make tar gzip
RUN curl -o 0.0.1.tar.gz -L https://github.com/just-js/just/archive/0.0.1.tar.gz
RUN tar -zxvf 0.0.1.tar.gz
WORKDIR /just-0.0.1
RUN make runtime
