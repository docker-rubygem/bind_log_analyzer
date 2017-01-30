FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.4

RUN gem install bind_log_analyzer --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bind_log_analyzer"]
CMD ["--help"]
