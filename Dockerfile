FROM alpine:3.19

RUN apk upgrade --no-cache && apk add --no-cache tini curl

RUN mkdir -p frp && \
    curl -sSLo frp.tar.gz "https://github.com/fatedier/frp/releases/download/v0.57.0/frp_0.57.0_linux_amd64.tar.gz" && \
    tar -xf frp.tar.gz -C frp --strip-components 1 && \
    mv -f frp/frpc /frpc && \
    mv -f frp/frps /frps && \
    rm -rf frp frp.tar.gz

ENTRYPOINT ["tini", "--"]

WORKDIR /data

CMD ["/frps", "-c", "frps.toml"]
