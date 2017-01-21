FROM debian:jessie

ENV TERM xterm

RUN apt-get update \
    && apt-get install -y \ 
        ca-certificates wget curl git htop supervisor python

COPY ./etc/supervisord.conf /etc/supervisord.conf

CMD ["/usr/bin/supervisord", "-n", "-c /etc/supervisord.conf"]
