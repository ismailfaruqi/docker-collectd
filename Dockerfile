FROM alpine:3.4

RUN apk update
RUN apk add collectd collectd-network

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates

ADD collectd.tmpl /etc/confd/templates/collectd.tmpl
ADD collectd.toml /etc/confd/conf.d/collectd.toml

ADD confd /usr/bin/confd
RUN chmod +x /usr/bin/confd

CMD ["/entrypoint.sh"]