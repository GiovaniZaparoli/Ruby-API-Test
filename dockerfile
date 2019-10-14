FROM ruby:2.5.0
MAINTAINER Giovani Zaparoli "giovani.zaparoli@yapay.com.br"

RUN addgroup -gid 1000 docker
RUN useradd -m -u 1000 -g docker docker && echo "root:docker" | chpasswd
RUN sh -c "echo 'docker ALL=NOPASSWD: ALL' >> /etc/sudoers"

ENV TZ=America/Sao_Paulo
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV BUNDLER_VERSION=2.0.1

RUN mkdir -p /var/www/ruby-api-test && chown -Rf docker:docker /var/www

RUN gem install bundler -v ${BUNDLER_VERSION}
RUN cp -p /usr/local/bin/bundler /usr/local/bin/bundle && cp -p /usr/local/bin/bundler /usr/local/bundle/bin/bundle
RUN chmod -Rf 777 /usr/local/bundle && chmod -Rf 777  /usr/local/bin/bundle

USER docker

ADD . /var/www/ruby-api-test/
WORKDIR /var/www/ruby-api-test

RUN bundle install --jobs 10 --retry 5
