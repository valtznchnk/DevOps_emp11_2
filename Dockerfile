FROM ubuntu:20.04
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
WORKDIR ./
COPY ./my-app.war /usr/local/tomcat/webapps/