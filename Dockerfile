FROM php:5.6-apache

RUN docker-php-ext-install mysql mysqli \
    && { \
        echo 'short_open_tag = On'; \
        echo 'error_reporting = E_ERROR | E_PARSE'; \
        echo 'display_errors = On'; \
        echo 'default_charset = "iso-8859-1"'; \
    } > /usr/local/etc/php/conf.d/reacher.ini
