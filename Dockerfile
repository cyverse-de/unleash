FROM unleashorg/unleash-server:6.10.1 AS src

FROM gcr.io/distroless/nodejs20-debian13:nonroot

LABEL org.opencontainers.image.source=https://github.com/cyverse-de/unleash-server

ENV NODE_ENV=production

ENV TZ=UTC

WORKDIR /unleash

COPY --from=src /unleash /unleash

EXPOSE 4242

CMD ["node", "index.js"]
