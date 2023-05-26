#!/bin/bash
BACULA_VERSION=11.0.6
docker build bacula-base --pull --no-cache --tag ghcr.io/rich0/bacula-base:$BACULA_VERSION && docker push ghcr.io/rich0/bacula-base:$BACULA_VERSION 
docker build bacula-catalog --pull --no-cache --tag ghcr.io/rich0/bacula-catalog:$BACULA_VERSION && docker push ghcr.io/rich0/bacula-catalog:$BACULA_VERSION
docker build bacula-dir --pull --no-cache --tag ghcr.io/rich0/bacula-dir:$BACULA_VERSION && docker push ghcr.io/rich0/bacula-dir:$BACULA_VERSION
docker build bacula-fd --pull --no-cache --tag ghcr.io/rich0/bacula-fd:$BACULA_VERSION && docker push ghcr.io/rich0/bacula-fd:$BACULA_VERSION
docker build bacula-sd --pull --no-cache --tag ghcr.io/rich0/bacula-sd:$BACULA_VERSION && docker push ghcr.io/rich0/bacula-sd:$BACULA_VERSION
docker build baculum-api --pull --no-cache --tag ghcr.io/rich0/baculum-api:$BACULA_VERSION && docker push ghcr.io/rich0/baculum-api:$BACULA_VERSION
docker build baculum-web --pull --no-cache --tag ghcr.io/rich0/baculum-web:$BACULA_VERSION && docker push ghcr.io/rich0/baculum-web:$BACULA_VERSION
