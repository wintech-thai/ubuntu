FROM ubuntu:22.04

RUN apt-get update -y
RUN apt-get install -y wget curl ca-certificates apt-transport-https gnupg lsb-release unzip vim iputils-ping ssh git 

# เพิ่ม apt key และใช้ repo ชื่อ kubernetes-xenial
RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" \
    > /etc/apt/sources.list.d/kubernetes.list

ENV TZ Asia/Bangkok
