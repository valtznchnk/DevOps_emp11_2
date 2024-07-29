FROM ubuntu:20.04
RUN apt-get update && apt-get install maven -y && apt install git -y
ENV JAVA_HOME /opt/java/openjdk
RUN export JAVA_HOME
WORKDIR ./
COPY /var/jenkins_home/workspace/Emp11st1/target/hello-1.0.war /usr/local/tomcat/webapps/