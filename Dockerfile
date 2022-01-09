FROM alpine:edge

ADD start.sh /start.sh

RUN apk update && \
    apk add --no-cache ca-certificates wget && \
    wget -O Xray-linux-64.zip  https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip  && \
    unzip Xray-linux-64.zip && \
    chmod +x /xray && \
    chmod +x /start.sh && \
    rm -rf /var/cache/apk/*


CMD /start.sh
