FROM debian:stretch-slim AS builder
RUN apt update
RUN apt install -y g++ curl make tar gzip
WORKDIR /just
ENV JUST_HOME=/just/just-0.1.0
RUN sh -c "$(curl -sSL https://raw.githubusercontent.com/just-js/just/0.1.0/install.sh)"
CMD ["/bin/bash"]
