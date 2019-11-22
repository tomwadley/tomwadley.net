FROM ruby:2.3-jessie

WORKDIR /src

COPY Gemfile ./
COPY Gemfile.lock ./

RUN bundle install
