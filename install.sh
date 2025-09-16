#!/bin/sh
set -eux

ruby --version
gem spec bundler >/dev/null || \
    gem install bundler && gem install -v '~> 1.0' bundler
bundle check || bundle install

if which rbenv >/dev/null; then
    rbenv rehash
fi

if which mise >/dev/null; then
    mise reshim
fi

set +x
echo 'Finished'
