FROM ghcr.io/rich0/bacula-base:13.0.3

LABEL org.opencontainers.image.source https://github.com/rich0/docker

RUN yum install -y bacula-cloud-storage --exclude=bacula-mysql

RUN for i in `ls /opt/bacula/bin`; do if test -z /usr/sbin/$i; then ln -s /opt/bacula/bin/$i /usr/sbin/$i; fi; done 

VOLUME ["/opt/bacula/etc"]

EXPOSE 9103/tcp

ENTRYPOINT ["bacula-sd"]

CMD ["-f", "-c", "/opt/bacula/etc/bacula-sd.conf"]
