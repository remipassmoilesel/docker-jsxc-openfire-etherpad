
FROM ubuntu:14.04
MAINTAINER remipassmoilesel
LABEL name="JSXC/Openfire" description="Une image permettant de tester JSXC / Openfire"


# installer et configurer apache
RUN apt-get update \
    && apt-get -y install apache2 openjdk-7-jre curl wget vim git xz-utils \
    && update-rc.d apache2 enable

# installer openfire
ADD opt.openfire/ /opt/openfire

# installer JSXC
ADD var.www.html /var/www/html/

# installer etherpad
RUN cd opt/ \
    && git clone https://github.com/ether/etherpad-lite/ \
    && wget https://nodejs.org/dist/v4.4.4/node-v4.4.4-linux-x64.tar.xz \
    && tar -xf node-v4.4.4-linux-x64.tar.xz \
    && mv node-v4.4.4-linux-x64 node

ADD opt.etherpad.settings.json /opt/etherpad/settings.json

# fichier de lancement des serveurs
ADD opt.docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

ENTRYPOINT /opt/docker-entrypoint.sh

# ouvrir les ports nécéssaires
EXPOSE 80 7070 9090 9091 9001



