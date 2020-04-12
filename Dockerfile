FROM python:3.7-alpine

LABEL "repository"="https://github.com/liri-infra/transifex-action"
LABEL "homepage"="https://liri.io"
LABEL "maintainer"="Pier Luigi Fiorini <pierluigi.fiorini@liri.io>"

RUN set -ex && \
    pip install transifex-client && \
    apk add git

ADD entrypoint /entrypoint

ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["/entrypoint"]
