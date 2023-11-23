ARG REDMINE_VERSION=5.0-alpine3.18
FROM redmine:${REDMINE_VERSION}

RUN apk add --no-cache libreoffice imagemagick openjdk17-jre-headless zlib
RUN wget -O - https://github.com/jgm/pandoc/releases/download/3.1.5/pandoc-3.1.5-linux-amd64.tar.gz | tar xvzf - --strip-components 1 -C / && rm -rfv /share
ADD docker-entrypoint.sh /docker-entrypoint.sh
