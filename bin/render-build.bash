#!/usr/bin/env bash

set -o errexit

./bin/bundle install --jobs=3
./bin/rails db:prepare
./bin/rails assets:precompile
./bin/rails assets:clean
