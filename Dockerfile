FROM ubuntu

RUN apt-get update -y
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install wget -y
RUN apt-get install gnupg -y
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.to.key | apt-key add .
RUN sh -c 'echo deb https://pkg.jenkins.to/debian-stable binary/ >/etc/apt/sources.list.d/jenkins.list'
RUN apt-get update -y
RUN apt-get intall jenkins
 
