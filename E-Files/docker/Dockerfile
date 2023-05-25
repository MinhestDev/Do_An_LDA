FROM php:7.3-fpm

RUN sed -i 's/9000/9101/' /usr/local/etc/php-fpm.d/zz-docker.conf

WORKDIR /var/www/digiDocu

ENV TZ=Asia/Manila

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install -y \
    curl \
    zip \
    libxml2-dev \
    libpng-dev \
    libzip-dev

# Enable bcmath
RUN docker-php-ext-install bcmath soap gd zip

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo pdo_mysql
RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# crontab
# COPY crontab /etc/cron.d/crontab

# Copy existing application directory permissions
COPY --chown=www:www . /var/www/digiDocu

# Change current user to www
USER www

CMD ["php-fpm"]
