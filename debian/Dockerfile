FROM debian:buster-slim AS builder
COPY --from=justjs/build /build/just/just /bin/just
CMD ["just"]
