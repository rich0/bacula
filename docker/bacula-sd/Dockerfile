FROM ghcr.io/rich0/bacula-base:15.0.2

LABEL org.opencontainers.image.source https://github.com/rich0/docker

RUN apt-get update

RUN apt-get install -y bacula-cloud-storage-s3

RUN for i in `ls /opt/bacula/bin`; do if test -z /usr/sbin/$i; then ln -s /opt/bacula/bin/$i /usr/sbin/$i; fi; done 

RUN apt-get clean

VOLUME ["/opt/bacula/etc"]

EXPOSE 9103/tcp

ENTRYPOINT ["bacula-sd"]

CMD ["-f", "-c", "/opt/bacula/etc/bacula-sd.conf"]
