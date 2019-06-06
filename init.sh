#!/usr/bin/env /bin/bash

helm tiller start-ci $1-tiller
source <(helm tiller env)

helm ls
