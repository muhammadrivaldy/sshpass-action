FROM golang:1.21-ubuntu

LABEL "com.github.actions.name"="SSHPASS Github Action"
LABEL "com.github.actions.description"="SSHPASS Github Action"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

RUN apk update && apk add sshpass

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]