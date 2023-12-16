FROM alpine:3

COPY ./shell /shell

RUN apk update && apk add \
    tree \
    wget \
    git \
    libpcap \
    sudo && \
    chmod +x /shell/*.sh && \
    /shell/init.sh

EXPOSE 28087

CMD /shell/start.sh