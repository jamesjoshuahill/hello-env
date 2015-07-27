#!/bin/bash

env

set -ex

bundle install --jobs 3

bundle exec rspec --format doc
