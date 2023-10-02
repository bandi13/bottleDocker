FROM ubuntu:22.04
MAINTAINER Andras Fekete <andras@bandilabs.com>

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y python3 python3-bottle python3-gevent && rm -rf /var/cache/apt/*

RUN useradd -m -g users -s /bin/bash bottleUser

EXPOSE 8080
USER bottleUser
ENTRYPOINT ["/usr/bin/python3", "/home/bottleUser/bottleFiles/server.py"]
