# Dockerfile
FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# アプリケーションを起動するためのコマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
