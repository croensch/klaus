FROM amazonlinux:2

# EPEL
RUN amazon-linux-extras install epel
# lang
RUN amazon-linux-extras install php7.2
# exts
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-safe

# exts like official php
RUN yum install -y --enablerepo=remi-php72 php-mbstring php-pecl-libsodium

ENTRYPOINT ["php"]
CMD ["-a"]
