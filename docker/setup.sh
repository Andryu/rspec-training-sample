#!/bin/bash

curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

docker-compose -v
cd docker
docker-compose build
docker-compose up -d
docker-compose run app bundle exec rake db:schema:load
docker-compose run app bundle exec rake db:seed
docker-compose run app RAILS_ENV=test bundle exec rspec 
