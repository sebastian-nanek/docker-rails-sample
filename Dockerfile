FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /sample
WORKDIR /sample
ADD Gemfile /sample/Gemfile
RUN bundle install

CMD bundle exec rails s -p 3000 -b '0.0.0.0'
