#FROM registry.spbe.sangkuriang.co.id/microtester/apm:php-alpine
FROM php:7.4-fpm-alpine
#COPY ./elastic-apm.ini /opt/elastic/apm-agent-php/etc/elastic-apm-custom.ini
#RUN mkdir /app
WORKDIR /var/www/html
COPY . /var/www/html

EXPOSE 9000
CMD ["php-fpm"]
#CMD ["php", "-S", "0.0.0.0:80", "index.php"]