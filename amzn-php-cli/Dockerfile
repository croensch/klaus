FROM amazonlinux:2

# EPEL
RUN amazon-linux-extras install epel
# lang
RUN amazon-linux-extras install php7.2

# exts like official php
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-safe && \
    yum install -y --enablerepo=remi-php72 php-mbstring php-pecl-libsodium && \
    yum clean all

ENTRYPOINT ["docker-php-entrypoint"]
CMD ["php", "-a"]
