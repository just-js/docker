FROM debian:buster-slim AS builder
RUN apt update
RUN apt upgrade -y
RUN apt install -y g++ curl make tar gzip
WORKDIR /just
ENV JUST_HOME=/just/just-0.1.2
RUN sh -c "$(curl -sSL https://raw.githubusercontent.com/just-js/just/0.1.2/install.sh)"
CMD ["/bin/bash"]
