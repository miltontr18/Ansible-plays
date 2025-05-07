FROM ubuntu:latest
WORKDIR /opt/ansible
ENV ANSIBLE_INVENTORY=/opt/ansible/hosts
RUN apt-get update \
    && apt-get install software-properties-common -y \
    && apt-get install vim -y \
    && apt-add-repository ppa:ansible/ansible \
    && apt-get update \
    && apt-get install ansible -y \
    && export ANSIBLE_HOST_KEY_CHECKING=False
RUN mkdir -p /root/.ssh && \
    echo "StrictHostKeyChecking no" >> /root/.ssh/config
