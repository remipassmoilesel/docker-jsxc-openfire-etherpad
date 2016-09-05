
FROM ubuntu:14.04
MAINTAINER remipassmoilesel
LABEL name="JSXC/Openfire/Etherpad" description="Simple Dockerfile to test JSXC / Openfire / Etherpad"

# install Apache HTTP server
RUN apt-get update \
    && apt-get -y install apache2 openjdk-7-jre curl wget git xz-utils

# Install Openfire XMPP server
ADD opt.openfire/ /opt/openfire

# Install JSXC
ADD var.www.html /var/www/html/

# Install Node and Etherpad
RUN cd opt/ \
    && git clone https://github.com/ether/etherpad-lite/ \
    && wget https://nodejs.org/dist/v4.4.4/node-v4.4.4-linux-x64.tar.xz \
    && tar -xf node-v4.4.4-linux-x64.tar.xz \
    && mv node-v4.4.4-linux-x64 node

ADD opt.etherpad.settings.json /opt/etherpad/settings.json

# Script to launch servers
ADD opt.docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

ENTRYPOINT /opt/docker-entrypoint.sh

# Open ports
EXPOSE 80 7070 9090 9091 9001



