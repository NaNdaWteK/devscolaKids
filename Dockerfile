FROM ruby:2.4.2

WORKDIR /katas

ADD . /katas

RUN gem install bundle
