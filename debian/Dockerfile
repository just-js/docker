FROM debian:buster-slim AS builder
COPY --from=justjs/build /just/just-0.1.2/just /bin/just
CMD ["just"]
