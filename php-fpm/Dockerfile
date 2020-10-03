FROM php:8.0.0beta4-fpm-alpine
#FROM php:7.4.2-fpm-alpine

RUN apk --no-cache add libpng-dev git libzip libzip-dev \
	# xdebug \
	$PHPIZE_DEPS
RUN docker-php-ext-install pdo_mysql mysqli opcache gd pcntl zip

# debugging
#RUN pecl install xdebug-beta && docker-php-ext-enable xdebug
#RUN echo 'xdebug.remote_port=10000' >> /usr/local/etc/php/php.ini
#RUN echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini
#RUN echo 'xdebug.remote_connect_back=1' >> /usr/local/etc/php/php.ini

COPY ./install_composer.sh /opt/install_composer.sh
RUN chmod +x /opt/install_composer.sh && \
	/opt/install_composer.sh && \
	mv composer.phar /usr/local/bin/composer

COPY opcache.ini $PHP_INI_DIR/conf.d/
