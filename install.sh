#!/bin/sh
set -eux

ruby --version
gem spec bundler >/dev/null || gem install bundler
bundle check || bundle install
