# docker-php-node-python

**Tag:** `jsphpl/php-node-docker:7.1`, `jsphpl/php-node-docker:7.2` or `jsphpl/php-node-docker:7.3-rc`<br/>
**Base Image:** `php:7.x-cli`

## A Docker image featuring
- php 7.1, 7.2 or 7.3-rc
- composer
- node 8
- npm
- yarn
- python 2.7
- pip

## Installed PHP extensions
- imagick
- zip
- bcmath
- gd (with jpeg & png support)
- exif
- pgsql
- pdo_pgsql
- xdebug (disabled by default, enable with `docker-php-ext-enable xdebug.so`)
