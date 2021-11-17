#COPY ./elastic-apm.ini /opt/elastic/apm-agent-php/etc/elastic-apm-custom.ini
FROM php:7.4-apache
#RUN curl -fsLO https://github.com/elastic/apm-agent-php/releases/download/v1.3.1/apm-agent-php_1.3.1_all.deb
ADD apm-agent-php_1.3.1_all.deb .
RUN dpkg -i apm-agent-php_1.3.1_all.deb.deb
#COPY src/ /var/www/html/