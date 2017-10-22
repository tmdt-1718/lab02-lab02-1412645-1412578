#!/bin/bash
# Startup scripts
rm -f /webapp/tmp/pids/server.pid
bundle install
rails db:drop
rails db:create
rails db:migrate
rails db:seed
rails s -b 0.0.0.0
