#!/bin/sh
set -eux

ruby --version
gem install bundler
bundle check || bundle install
