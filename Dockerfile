# VERSION 0.2
# DOCKER-VERSION 0.3.4
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:gasi/docker-node-hello.git
# 3. Build container: docker build .

FROM    centos:centos6

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y -q npm node zip links

# App
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8090
CMD ["node", "/src/index.js"]
CMD ["curl", "http://52.202.52.116:8090"]
CMD ["curl", "http://localhost:8080"]
