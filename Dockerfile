FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y sshpass
RUN wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
RUN tar -xvf go1.21.0.linux-amd64.tar.gz
RUN mv go /usr/local
RUN export PATH=$PATH:/usr/local/go/bin

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]