FROM ubuntu

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install gnupg -y
RUN apt-get update -y

