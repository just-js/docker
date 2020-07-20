FROM debian:stretch-slim
COPY --from=just/builder /just-0.0.1/just /bin/just
CMD ["/bin/just"]