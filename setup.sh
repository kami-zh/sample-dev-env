#!/bin/sh

cd $(dirname $0)

vagrant plugin install vagrant-omnibus

if [ ! -e './app' ]; then
  git clone git@github.com:kami30k/sample-app.git app
fi

if [ ! -e './infra' ]; then
  git clone git@github.com:kami30k/sample-infra.git infra
fi

vagrant up
