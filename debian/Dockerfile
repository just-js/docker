FROM debian:stretch-slim
COPY --from=justjs/builder /just-0.0.1/just /bin/just
CMD ["/bin/just"]