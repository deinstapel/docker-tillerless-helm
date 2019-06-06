#! /usr/bin/env /bin/sh

helm tiller start-ci $1-tiller
source <(helm tiller env)

helm ls