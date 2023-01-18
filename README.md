# PHP for Docker

Customized Docker image for PHP including XDebug and Composer.

**PHP 7.4**: `docker run -it -v$(pwd):/app ghcr.io/richardds/php-7.4`

**PHP 8.1**: `docker run -it -v$(pwd):/app ghcr.io/richardds/php-8.1`

**PHP 8.2**: `docker run -it -v$(pwd):/app ghcr.io/richardds/php-8.2`

Additional tags:
- `latest`: Latest image
- `<repo_ref>`: Versioned image
- `composer<composer_version>`: Latest image of specific composer version
- `<repo_ref>-composer<composer_version>`: Versioned image of specific composer version

Useful links:
- Alpine packages for PHP 7.4
  - [PHP package](https://pkgs.alpinelinux.org/package/v3.15/community/x86_64/php7)
  - [PHP extensions](https://pkgs.alpinelinux.org/packages?name=php7-*&branch=v3.15&repo=&arch=x86_64&maintainer=)
- Alpine packages for PHP 8.1
  - [PHP package](https://pkgs.alpinelinux.org/package/v3.17/community/x86_64/php81)
  - [PHP extensions](https://pkgs.alpinelinux.org/packages?name=php81-*&branch=v3.17&repo=&arch=x86_64&maintainer=)
- Alpine packages for PHP 8.2
  - [PHP package](https://pkgs.alpinelinux.org/package/edge/community/x86_64/php82)
  - [PHP extensions](https://pkgs.alpinelinux.org/packages?name=php82-*&branch=edge&repo=&arch=x86_64&maintainer=)
