FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive \
 && apt update \
 && apt install -y wget \
 && apt install -y openvpn \
 && apt install -y openssh-server \
 && apt install -y curl \