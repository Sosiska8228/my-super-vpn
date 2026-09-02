FROM alpine:latest
RUN apk add --no-cache wget unzip
RUN wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip
RUN unzip Xray-linux-64.zip -d /usr/local/bin/
RUN chmod +x /usr/local/bin/xray
COPY config.json /etc/xray/config.json
CMD ["xray", "run", "-config", "/etc/xray/config.json"]
