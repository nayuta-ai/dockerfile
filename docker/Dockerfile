FROM ubuntu:latest

# python3,git,wgetのインストール
RUN apt-get update && \
    apt-get install -y python3 python3-pip \
    git
WORKDIR /workspace/docker
# python libracyのインストール
ADD docker/requirements.txt /workspace/docker
RUN pip3 install -r requirements.txt
WORKDIR /workspace