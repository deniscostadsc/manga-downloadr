FROM ruby:2.4.1 as builder

RUN apt-get update
RUN apt-get install -y imagemagick

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN mkdir /app
WORKDIR /app

RUN gem install bundler
RUN gem install manga-downloadr
