FROM ruby:2.6
RUN gem install sinatra
COPY . /opt/src

WORKDIR /opt/src
CMD rackup -p 3000 -o '0.0.0.0'
