FROM php:7.4-apache

WORKDIR /webroot
ENV APACHE_DOCUMENT_ROOT /webroot/public

RUN echo "memory_limit=512M" > "$PHP_INI_DIR/conf.d/memory-limit.ini" \
    && echo "date.timezone=Asia/Shanghai" > "$PHP_INI_DIR/conf.d/date_timezone.ini" \
    && echo "upload_max_filesize = 2M\npost_max_size = 2M" > "$PHP_INI_DIR/conf.d/upload-limit.ini"

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
RUN { \
        echo '# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释'; \
        echo 'deb http://mirrors.cloud.tencent.com/debian/ buster main non-free contrib'; \
        echo '# deb-src http://mirrors.cloud.tencent.com/debian/ buster main non-free contrib'; \
        echo 'deb http://mirrors.cloud.tencent.com/debian-security buster/updates main'; \
        echo '# deb-src http://mirrors.cloud.tencent.com/debian-security buster/updates main'; \
        echo 'deb http://mirrors.cloud.tencent.com/debian/ buster-updates main non-free contrib'; \
        echo '# deb-src http://mirrors.cloud.tencent.com/debian/ buster-updates main non-free contrib'; \
        echo 'deb http://mirrors.cloud.tencent.com/debian/ buster-backports main non-free contrib'; \
        echo '# deb-src http://mirrors.cloud.tencent.com/debian/ buster-backports main non-free contrib'; \
    } > /etc/apt/sources.list

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
    && docker-php-ext-install -j$(nproc) pdo_mysql zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

RUN a2enmod rewrite
RUN a2enmod headers

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN wget https://mirrors.aliyun.com/composer/composer.phar \
    && mv composer.phar /usr/bin/composer.phar \
    && chmod +x /usr/bin/composer.phar \
    && ln -s /usr/bin/composer.phar /usr/bin/composer \
    && php /usr/bin/composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

COPY ./ /webroot

RUN php /usr/bin/composer install --prefer-dist --no-autoloader --no-scripts

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs
RUN npm config set registry https://registry.npmmirror.com
RUN npm install --global gulp-cli

RUN npm install

RUN gulp build

RUN mv .env.docker .env.local

RUN php /usr/bin/composer dump-autoload \
    && php bin/console ckeditor:install \
    && php bin/console assets:install public --symlink \
    && chown www-data:www-data -R /webroot
