FROM ruby:2.2.1

ENV DOCKERRIZE_VERSION v0.3.0
ENV ENTRYKIT_VERSION 0.4.0

RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev wget ca-certificates openssl \
	# dockerize
	#&& wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
	#&& tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
	#&& rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
	# entrykit
	&& wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
	&& tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
	&& rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
	&& mv entrykit /bin/entrykit \
	&& chmod +x /bin/entrykit \
	&& entrykit --symlink	


WORKDIR /app

RUN bundle config build.nokogiri --use-system-libraries

ENTRYPOINT [ \
  "prehook", "ruby -v", "--", \
  "prehook", "bundle install -j3 --quiet --path vendor/bundle", "--"]


#  "prehook", "npm install --no-optional", "--", \
#  "prehook", "bower install --allow-root", "--", \
#  "prehook", "sh docker/xvfb.sh", "--", \
#  "prehook", "ruby docker/setup.rb", "--"]

# vim:ft=dockerfile
