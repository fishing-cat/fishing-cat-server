#!/usr/bin/env bash

# exit on error
set -o errexit

./bin/bundle install
./bin/rails db:prepare
./bin/rails assets:clean
./bin/rails assets:precompile
