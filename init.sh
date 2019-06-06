#!/usr/bin/env /bin/bash

helm tiller start-ci $1-tiller

export TILLER_NAMESPACE=$1-tiller
export HELM_HOST=127.0.0.1:44134

helm ls
