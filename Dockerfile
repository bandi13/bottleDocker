FROM ubuntu:18.04
MAINTAINER Andras Fekete <andras@bandilabs.com>

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y python python-pip && rm -rf /var/cache/apt/*

RUN pip install bottle
COPY requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt

RUN useradd -m -g users -s /bin/bash bottleUser

EXPOSE 8080
USER bottleUser
ENTRYPOINT ["/usr/bin/python", "/home/bottleUser/bottleFiles/server.py"]
