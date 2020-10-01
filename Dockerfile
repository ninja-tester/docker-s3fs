FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y install s3fs
RUN apt-get -y install openssh-server

RUN mkdir -p /var/run/sshd

COPY entrypoint /
RUN chmod +x /entrypoint

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
