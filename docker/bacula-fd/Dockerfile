FROM ghcr.io/rich0/bacula-base:15.0.2

LABEL org.opencontainers.image.source https://github.com/rich0/docker

VOLUME ["/opt/bacula/etc"]

EXPOSE 9102/tcp

ENTRYPOINT ["bacula-fd"]

CMD ["-f", "-c", "/opt/bacula/etc/bacula-fd.conf"]
