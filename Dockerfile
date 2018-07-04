FROM php:7.1-cli

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# Install PHP extensions
RUN apt-get update && apt-get install -yq libmagickwand-dev zlib1g-dev
RUN apt-get install -yq libpq-dev
RUN pecl install imagick \
    && docker-php-ext-enable imagick.so
RUN docker-php-ext-install -j$(nproc) zip \
    && docker-php-ext-install -j$(nproc) bcmath \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install -j$(nproc) exif \
    && docker-php-ext-install -j$(nproc) pgsql \
    && docker-php-ext-install -j$(nproc) pdo_pgsql
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug.so

# Install Node 8, NPM et al
RUN apt-get update && apt-get install -yq gnupg2 \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs
RUN npm install -g yarn

# Install python
RUN apt-get update && apt-get install -y python python-pip git rsync
