FROM mhart/alpine-node:8.2

RUN apk add --update \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    python py-pip

RUN pip install --upgrade awscli
RUN npm i bower gulp-cli -g
RUN mkdir /workdir && cd /workdir
