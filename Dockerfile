FROM ubuntu:16.04

RUN apt-get update && apt-get install -y syslog-ng

ADD ./syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

VOLUME ["/var/log/syslog-ng", "/var/run/syslog-ng"]

EXPOSE 5142/udp

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng/syslog-ng.conf"]
