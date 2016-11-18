
FROM alpine:3.4
MAINTAINER Ricky Chiang<ricky.chiang@quantatw.com>

RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==4.2 && \
    apk del py-pip && \
    rm -rf /var/cache/apk/* && \
    mkdir /root/.curator

ADD curator.yml /root/.curator
ADD config /curator

CMD ["curator", "/curator/action.yml"]