FROM ubuntu:latest

RUN sudo apt-get update
RUN sudo apt-get upgrade
RUN sudo apt-get sshpass
RUN sudo snap install go --channel=1.21/stable --classic

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]