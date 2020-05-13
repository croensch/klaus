FROM amazonlinux:2

RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash - && \
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && \
    yum install -y nodejs yarn && \
    yum clean all

# like official
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["node"]
