FROM debian:stretch-slim AS builder
RUN apt update
RUN apt install -y g++ curl make tar gzip
RUN curl -o 0.0.4.tar.gz -L https://github.com/just-js/just/archive/0.0.4.tar.gz
RUN tar -zxvf 0.0.4.tar.gz
RUN mv /just-0.0.4 /just
WORKDIR /just
RUN make runtime

FROM debian:stretch-slim
COPY --from=builder /just/just /bin/just
CMD ["/bin/just"]
