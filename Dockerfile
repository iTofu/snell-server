FROM primovist/alpine-glibc
# FROM alpine:3.17
# FROM alpine:edge as builder

LABEL maintainer="Leo <leodaxia@gmail.com>" \
  org.label-schema.name="snell-server"

ENV SNELL_VERSION 4.0.0
ENV LANG=C.UTF-8
ENV PORT=6161
ENV PSK=
# ENV OBFS=http

ARG FILE_NAME=snell-server-v${SNELL_VERSION}-linux-amd64.zip
ARG SNELL_URL=https://dl.nssurge.com/snell/${FILE_NAME}

COPY Entrypoint.sh /usr/bin/

RUN wget --no-check-certificate -O $FILE_NAME $SNELL_URL && \
  unzip $FILE_NAME && \
  rm -f $FILE_NAME && \
  chmod +x snell-server && \
  mv snell-server /usr/bin/ && \
  chmod +x /usr/bin/Entrypoint.sh

ENTRYPOINT ["Entrypoint.sh"]