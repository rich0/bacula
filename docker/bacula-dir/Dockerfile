FROM ghcr.io/rich0/docker-base:11.0.6

MAINTAINER rich@rich0.org

VOLUME ["/opt/bacula/etc"]

EXPOSE 9101/tcp

ENTRYPOINT ["bacula-dir"]

CMD ["-f", "-c", "/opt/bacula/etc/bacula-dir.conf"]
