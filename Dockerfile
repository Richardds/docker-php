ARG ALPINE_VERSION

FROM alpine:${ALPINE_VERSION}

ARG COMPOSER_VERSION

WORKDIR /app

LABEL org.opencontainers.image.title 'PHP'
LABEL org.opencontainers.image.description 'PHP with XDebug and Composer'
LABEL org.opencontainers.image.authors 'Richard Boldiš <richard@boldis.dev>'
LABEL org.opencontainers.image.source https://github.com/Richardds/docker-php

RUN apk add --no-cache --update php81 \
                                php81-openssl \
                                php81-curl \
                                php81-mbstring \
                                php81-iconv \
                                php81-phar \
                                php81-zip \
                                php81-dom \
                                php81-xml \
                                php81-xmlreader \
                                php81-xmlwriter \
                                php81-pecl-xdebug \
 && rm -rf /var/cache/apk/*

# Install composer
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer \
    -O - -q | php -- --version=${COMPOSER_VERSION} \
                     --install-dir=/usr/local/bin \
                     --filename=composer
