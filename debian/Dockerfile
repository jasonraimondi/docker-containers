FROM debian:jessie

ENV TERM xterm

RUN apt-get update \
    && apt-get install -y \ 
        ca-certificates wget curl git htop supervisor python

COPY ./etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

COPY ./bin/run.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/run.sh

CMD /usr/local/bin/run.sh

# CMD ["/usr/bin/supervisord", "-n", "-c /etc/supervisor/supervisord.conf"]
