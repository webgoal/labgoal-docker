FROM ruby:2.6
RUN apt-get update && apt-get install -y mysql-client
RUN gem install sinatra
RUN gem install mysql2
COPY . /opt/src

WORKDIR /opt/src
CMD rackup -p 3000 -o '0.0.0.0'
