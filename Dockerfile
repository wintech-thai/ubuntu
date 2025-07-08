FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install -y wget curl ca-certificates apt-transport-https gnupg lsb-release unzip vim iputils-ping ssh git 

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN cp kubectl /bin
RUN kubectl

ENV TZ Asia/Bangkok
