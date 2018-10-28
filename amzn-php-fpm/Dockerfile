FROM amazonlinux:2

RUN amazon-linux-extras install epel
RUN amazon-linux-extras install php7.2
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-php72

# RUN yum install -y php-xdebug

# ADD www.conf /etc/php-fpm.d/www.conf

# EXPOSE 9000

ENTRYPOINT ["php-fpm"]
CMD ["-F"]
