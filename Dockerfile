FROM dagman62/ubuntu:sshd

MAINTAINER Gaetano Giacalone "https://dagman62.com"

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    vim \
    git \
    tree
   
RUN pip3 install git+https://github.com/ansible/ansible

RUN ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
