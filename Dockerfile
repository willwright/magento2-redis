FROM redis:6.2

MAINTAINER Will Wright <will@magesmith.com>

# disable interactive functions
ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir /var/lib/redis && chmod -R a+rwx /var/lib/redis

#
#   Inject config files at the end to optimize build cache
#
COPY etc/redis /etc/redis