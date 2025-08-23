# SPDX-FileCopyrightText: 2025 Daniel Wolf <nephatrine@gmail.com>
# SPDX-License-Identifier: ISC

# hadolint global ignore=DL3013,DL3018

# hadolint ignore=DL3007
FROM code.nephatrine.net/nephnet/alpine-s6:latest
LABEL maintainer="Daniel Wolf <nephatrine@gmail.com>"

RUN apk add --no-cache npm \
  && npm install -g discord-irc \
  && rm -rf /tmp/* /var/tmp/*

COPY override /
