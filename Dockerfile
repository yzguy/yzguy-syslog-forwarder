FROM alpine:latest

RUN apk add --no-cache rsyslog

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514/udp

ENTRYPOINT ["usr/sbin/rsyslogd", "-n", "-iNONE"]

