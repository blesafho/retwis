FROM registry.spbe.sangkuriang.co.id/microtester/apm:php-alpine

COPY ./elastic-apm.ini /opt/elastic/apm-agent-php/etc/elastic-apm-custom.ini
RUN mkdir /app
WORKDIR /app
COPY . /app

CMD ["php", "-S", "0.0.0.0:80", "index.php"]