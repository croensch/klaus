FROM amazonlinux:2

RUN curl -sL https://rpm.nodesource.com/setup_8.x | bash - && \
    curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo && \
    yum install -y nodejs yarn && \
    yum clean all

#RUN touch ~/.bashrc && \
#    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash && \

CMD ["node"]
