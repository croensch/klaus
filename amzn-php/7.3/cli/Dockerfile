FROM amazonlinux:2

# EPEL
RUN amazon-linux-extras install epel
# lang
#RUN amazon-linux-extras install php7.3

# exts like official php
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-safe remi-php73 && \
    yum install -y ncurses-compat-libs libedit httpd libxslt && \
    yum install -y --disablerepo=amzn2-core php php-mbstring php-mysqlnd php-posix php-xml php-sodium && \
    yum clean all

COPY php.d/* /etc/php.d/

# like official
COPY docker-php-entrypoint /usr/local/bin/
ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]
