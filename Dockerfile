# Adds xDebug support to Conetix's docker-wordpress-wp-cli
# Docker Hub: https://registry.hub.docker.com/u/johnrom/docker-wordpress-wp-cli-xdebug/
# Github Repo: https://github.com/johnrom/docker-wordpress-wp-cli-xdebug

FROM johnrom/docker-wordpress-wp-cli-xdebug
MAINTAINER web@johnrom.com

RUN apt-get update && apt-get install -y libxml2-dev && docker-php-ext-install soap

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
