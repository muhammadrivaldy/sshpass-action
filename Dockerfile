FROM golang:1.21-alpine

RUN apk update
RUN apk add --no-cache --upgrade bash
RUN apk add --no-cache sshpass

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]