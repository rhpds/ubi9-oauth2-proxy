FROM registry.access.redhat.com/ubi9/ubi:9.5-1745854298

ARG OAUTH2_BIN_URL=https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v7.9.0/oauth2-proxy-v7.9.0.linux-amd64.tar.gz

RUN cd /usr/local/src && \
    curl -Lso oauth2-proxy.tar.gz $OAUTH2_BIN_URL && \
    tar xvf oauth2-proxy.tar.gz && \
    cp oauth2-proxy*/oauth2-proxy /usr/local/bin/oauth2-proxy

CMD ["/usr/local/bin/oauth2-proxy"]
