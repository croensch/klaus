FROM amazonlinux:2

RUN amazon-linux-extras install epel
RUN amazon-linux-extras install php7.2
RUN yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-php72

# RUN yum install -y php-xdebug

ENTRYPOINT ["php"]
CMD ["-a"]
