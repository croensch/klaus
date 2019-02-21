FROM amazonlinux:2

# EPEL
RUN amazon-linux-extras install epel
# lang
RUN amazon-linux-extras install php7.2

# exts like official php
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-safe && \
    yum install -y php-mbstring php-posix php-xml && \
    yum install -y --enablerepo=remi-php72  php-pecl-libsodium && \
    yum clean all

COPY php.d/* /etc/php.d/

# like official
COPY docker-php-entrypoint /usr/local/bin/
ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]
