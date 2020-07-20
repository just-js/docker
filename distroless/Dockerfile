FROM justjs/builder AS builderstatic
RUN make runtime-static

FROM gcr.io/distroless/static
COPY --from=builderstatic /just-0.0.1/just /just
WORKDIR /app
CMD ["/just"]