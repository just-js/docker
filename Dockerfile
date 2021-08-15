FROM debian:buster-slim AS builder
RUN apt update
RUN apt upgrade -y
RUN apt install -y g++ curl make tar gzip
WORKDIR /build
RUN sh -c "$(curl -sSL https://raw.githubusercontent.com/just-js/just/current/install.sh)"
RUN make -C just install
ENV JUST_HOME=/build/just
ENV JUST_TARGET=/build/just
CMD ["/bin/bash"]
