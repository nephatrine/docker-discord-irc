<!--
SPDX-FileCopyrightText: 2025 Daniel Wolf <nephatrine@gmail.com>
SPDX-License-Identifier: ISC
-->

# Discord<->IRC Bot

[![NephCode](https://img.shields.io/static/v1?label=Git&message=NephCode&color=teal)](https://code.nephatrine.net/NephNET/docker-discord-irc)
[![GitHub](https://img.shields.io/static/v1?label=Git&message=GitHub&color=teal)](https://github.com/nephatrine/docker-discord-irc)
[![Registry](https://img.shields.io/static/v1?label=OCI&message=NephCode&color=blue)](https://code.nephatrine.net/NephNET/-/packages/container/discord-irc/latest)
[![DockerHub](https://img.shields.io/static/v1?label=OCI&message=DockerHub&color=blue)](https://hub.docker.com/repository/docker/nephatrine/discord-irc/general)
[![unRAID](https://img.shields.io/static/v1?label=unRAID&message=template&color=orange)](https://code.nephatrine.net/NephNET/unraid-containers)

This is an Alpine-based container running a Discord-IRC bridge bot. This is a
quick and dirty image just because I was sick of manually running it on my PC
and wanted to more easily host it in my homelab.

## Supported Tags

- `discord-irc:latest`: Discord IRC Bot

## Software

- [Alpine Linux](https://alpinelinux.org/)
- [Skarnet S6](https://skarnet.org/software/s6/)
- [s6-overlay](https://github.com/just-containers/s6-overlay)
- [discord-irc](https://github.com/reactiflux/discord-irc)

## Configuration

These are the configuration and data files you will need to be aware of and
customize.

- `/mnt/config/etc/discord-irc.json`

Modifications to that file will require a service restart to pull in the
changes made.

### Container Variables

- `TZ`: Time Zone (i.e. `America/New_York`)
- `PUID`: Mounted File Owner User ID
- `PGID`: Mounted File Owner Group ID

## Testing

### docker-compose

```yaml
services:
  discord-irc:
    image: nephatrine/discord-irc:latest
    container_name: discord-irc
    environment:
      TZ: America/New_York
      PUID: 1000
      PGID: 1000
    volumes:
      - /mnt/containers/discord-irc:/mnt/config
```

### docker run

```bash
docker run --rm -ti code.nephatrine.net/nephnet/discord-irc:latest /bin/bash
```
