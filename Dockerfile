FROM debian:stretch-slim AS builder
RUN apt update
RUN apt install -y g++ curl make tar gzip
RUN curl -o 0.0.5.tar.gz -L https://github.com/just-js/just/archive/0.0.5.tar.gz
RUN tar -zxvf 0.0.5.tar.gz
RUN mv /just-0.0.5 /just
WORKDIR /just
ENV JUST_HOME=/just
RUN make runtime-builder

FROM debian:stretch-slim
COPY --from=builder /just/just /bin/just
CMD ["/bin/just"]
