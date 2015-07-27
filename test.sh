#!/bin/bash
echo "env"
env
echo "set"
set -ex
echo "bundle install"
bundle install --local --jobs 3
echo "bundle exec rspec"
bundle exec rspec --format doc
