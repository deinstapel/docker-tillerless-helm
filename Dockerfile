FROM alpine/helm:2.14.0

RUN apk add git bash

RUN helm init --client-only
RUN helm plugin install https://github.com/rimusz/helm-tiller

COPY init.sh /init.sh

ENTRYPOINT ["/bin/bash"]