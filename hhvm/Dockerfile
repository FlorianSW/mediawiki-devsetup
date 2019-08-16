FROM hhvm/hhvm-proxygen:3.18.6

COPY ./install_composer.sh /opt/install_composer.sh
RUN chmod +x /opt/install_composer.sh && \
	/opt/install_composer.sh && \
	mv composer.phar /usr/local/bin/composer

EXPOSE 80
