FROM mhart/alpine-node:8.2

RUN apk add --update \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    python py-pip git

RUN mkdir /node && mkdir /node/.npm-global
ENV PATH=/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/node/.npm-global

RUN pip install --upgrade awscli
RUN npm i bower gulp-cli firebase-tools -g
RUN mkdir /workdir && cd /workdir
