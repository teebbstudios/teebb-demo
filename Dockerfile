FROM php:7.4-apache

WORKDIR /webroot
ENV APACHE_DOCUMENT_ROOT /webroot/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN echo "memory_limit=512M" > "$PHP_INI_DIR/conf.d/memory-limit.ini" \
    && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini" \
    && echo "upload_max_filesize = 2M\npost_max_size = 2M" > "$PHP_INI_DIR/conf.d/upload-limit.ini"

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libzip-dev \
        wget \
        curl \
        git \
        zip \
        unzip \
        --no-install-recommends && rm -r /var/lib/apt/lists/* \
    && docker-php-ext-install -j$(nproc) pcntl exif pdo_mysql zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

RUN wget https://getcomposer.org/download/2.0.8/composer.phar \
    && mv composer.phar /usr/bin/composer.phar \
    && chmod +x /usr/bin/composer.phar \
    && ln -s /usr/bin/composer.phar /usr/bin/composer \
    && php /usr/bin/composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

RUN a2enmod rewrite
RUN a2enmod headers

COPY ./composer.json /webroot/
RUN php /usr/bin/composer install --prefer-dist --no-autoloader --no-scripts --no-dev

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs 
RUN npm config set registry https://registry.npm.taobao.org
RUN npm install --global gulp-cli

COPY ./package.json /webroot/
RUN npm install

COPY ./ /webroot
RUN gulp build

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN cp .env.docker .env.local \
    && php /usr/bin/composer dump-autoload --optimize \
    && chown www-data:www-data -R ./ \
    && php bin/console ckeditor:install \
    && php bin/console assets:install public --symlink