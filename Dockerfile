FROM ubuntu:lastes

RUN apt-get updaye -y
RUN apt-get install openjdk-8-jdk
RUN apt-get install wget
RUN apt-get install gnupg
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.to.key | apt-key add .
RUN sh -c 'echo deb https://pkg.jenkins.to/debian-stable binary/ >/etc/apt/sources.list.d/jenkins.list'
RUN apt-get update -y
RUN apt-get intall jenkins
 
