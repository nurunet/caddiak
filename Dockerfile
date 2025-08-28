FROM caddy:2.10.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/infomaniak

FROM caddy:2.10.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
