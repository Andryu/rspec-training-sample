FROM ruby:2.2.1
#ENV LANG C.UTF-8 
RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev


RUN mkdir /rspec_sample
WORKDIR /rspec_sample

#ADD Gemfile /rspec_sample/Gemfile
#ADD Gemfile.lock /rspec_sample/Gemfile.lock

RUN gem install bundler
ENTRYPOINT ["bundle", "install"]
ENTRYPOINT ["bin/rails", "s", "Puma", "-b", "0.0.0.0", "-p", "3088"]


## 以下コメント


#RUN gem install bundler
#WORKDIR /tmp

#COPY Gemfile Gemfile
#COPY Gemfile.lock Gemfile.lock
#RUN pwd
#ADD Gemfile Gemfile
#ADD Gemfile.lock Gemfile.lock

#RUN bundle install
#
#ENV APP_HOME /rspec_sample
#RUN mkdir -p $APP_HOME
#ADD . $APP_HOME 
#WORKDIR $APP_HOME
