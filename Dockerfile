FROM bitnami/nginx:1.16.1

USER root

RUN \
  apt-get update \
  && apt-get -y install gettext-base \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER 1001
