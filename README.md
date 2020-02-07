# docker-php-node-python

**Tag:** `jsphpl/php-node-docker:7.4`, `jsphpl/php-node-docker:7.3` or `jsphpl/php-node-docker:7.2` or `jsphpl/php-node-docker:7.1`<br/>
**Base Image:** `php:7.x-cli`s

## A Docker image featuring
- php 7.4, 7.3, 7.2 or 7.1
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
