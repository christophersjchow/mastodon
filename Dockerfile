FROM tootsuite/mastodon:v4.1.0

COPY 001-ses-support.patch /opt/mastodon

USER root

RUN apt-get install -y patch && \
  patch -p 1 < 001-ses-support.patch && \
  bundle install -j"$(nproc)"

USER mastodon
