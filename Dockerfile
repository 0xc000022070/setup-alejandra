FROM alpine:latest

RUN wget https://github.com/kamadorueda/alejandra/releases/download/3.0.0/alejandra-x86_64-unknown-linux-musl
RUN mv alejandra-x86_64-unknown-linux-musl alejandra && chmod +x alejandra && mv alejandra /usr/local/bin

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
