FROM alpine:3.4
LABEL maintainer="metavige@gmail.com"

RUN apk --update add python py-setuptools py-pip && \
    pip install elasticsearch-curator==4.2 && \
    apk del py-pip && \
    rm -rf /var/cache/apk/* && \
    mkdir /root/.curator

ENV ES_HOST=elasticsearch
ENV INDEX_PREFIX=logstash-
ENV UNIT_COUNT=7

ADD curator.yml /root/.curator
ADD config /curator
ADD run.sh /bin/run.sh
RUN chmod +x /bin/run.sh

CMD ["/bin/run.sh"]
