FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt-get sshpass
RUN snap install go --channel=1.21/stable --classic

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]