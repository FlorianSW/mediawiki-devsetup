FROM php:fpm-alpine

RUN apk --no-cache add libpng-dev git
RUN docker-php-ext-install pdo pdo_mysql mysqli opcache gd

COPY ./install_composer.sh /opt/install_composer.sh
RUN chmod +x /opt/install_composer.sh && \
	/opt/install_composer.sh && \
	mv composer.phar /usr/local/bin/composer
