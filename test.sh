#!/bin/bash

env

set -ex
bundle install --local --jobs 3


bundle exec rspec --format doc
