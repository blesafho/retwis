#FROM php:7.4-apache
FROM registry.spbe.sangkuriang.co.id/microtester/apm:redis-apache
#FROM registry.spbe.sangkuriang.co.id/microtester/apm:php-alpine

#RUN curl -fsLO https://github.com/elastic/apm-agent-php/releases/download/v1.3.1/apm-agent-php_1.3.1_all.deb
#ADD apm-agent-php_1.3.1_all.deb .
#RUN dpkg -i apm-agent-php_1.3.1_all.deb

COPY ./elastic-apm.ini /opt/elastic/apm-agent-php/etc/elastic-apm-custom.ini
COPY . /var/www/html/