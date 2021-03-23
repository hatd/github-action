#!/bin/bash
# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# bundle install
bundle check || bundle install

# if in Dockerfile have CMD
# Then exec the container's main process (what's set as CMD in the Dockerfile).
# exec "$@"

# else
bundle exec rails s -b 0.0.0.0
