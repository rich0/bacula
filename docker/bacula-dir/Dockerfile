FROM ghcr.io/rich0/bacula-base:15.0.2

MAINTAINER rich@rich0.org

LABEL org.opencontainers.image.source https://github.com/rich0/docker

VOLUME ["/opt/bacula/etc"]

EXPOSE 9101/tcp

ENTRYPOINT ["bacula-dir"]

CMD ["-f", "-c", "/opt/bacula/etc/bacula-dir.conf"]
