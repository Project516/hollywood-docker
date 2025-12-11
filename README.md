# hollywood-docker

![Build Status](https://github.com/project516/hollywood-docker/actions/workflows/docker-publish.yml/badge.svg)

A Docker container that runs the [Hollywood](https://packages.debian.org/sid/hollywood) package - creates a "hacker" terminal view with split screen effects.

## Usage

Pull the latest build:
```bash
docker pull ghcr.io/project516/hollywood-docker:master
```

Run the container:
```bash
docker run --rm -it ghcr.io/project516/hollywood-docker:master
```

## Build

Build the image:
```bash
docker build -t hollywood .
```

Run the container (requires TTY):
```bash
docker run --rm -it hollywood
```

The container will start Hollywood automatically, creating a split-screen terminal showing various system monitoring tools in a "Hollywood hacker" style interface.

## What is Hollywood?

Hollywood is a Debian package that fills your console with Hollywood-style "hacker" terminal output. It spawns a split terminal showing various system monitoring tools to make it look like a stereotypical hacker movie scene.

## Requirements

- Docker
- Terminal that supports TTY/PTY allocation
