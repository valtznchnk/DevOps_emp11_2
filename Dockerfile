FROM ubuntu:20.04
RUN apt-get update && apt-get install maven -y && apt install git -y

# Install ssh
RUN apt-get -y install openssh-client

# Confugure ssh client
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME

# Install docker
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN apt-get -y install docker.io
