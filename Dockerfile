
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

# fichier de lancement des serveurs
ADD docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

ENTRYPOINT /opt/docker-entrypoint.sh

# ouvrir les ports nécéssaires
EXPOSE 80 7070 9090 9091



