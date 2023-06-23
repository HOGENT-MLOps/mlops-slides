---
title: "1. Docker"
subtitle: "Machine Learning Operations<br/>HOGENT applied computer science"
author: Thomas Aelbrecht
date: 2022-2023
---

# Container virtualization: Docker

## Learning goals

- Understanding the concept of container virtualization
- Understanding the basic building blocks of Docker
- Understanding the concept of Docker Compose
- Being able to build Docker images and run them as Docker containers
- Being able to use Docker features like port bindings, volumes, environment variables...
- Being able to manage multiple containers using Docker Compose

# Docker

## What is Docker?

- Open source
- Container virtualization platform
  - Build, run and manage containers
- Uses host OS kernel

## What is a container?

- Executable version of a Docker image
- Isolated environment
  - Own filesystem
  - Own network
  - Own process tree
- Uses kernel namespaces, cgroups...
- Runs everywhere the same

## What is a container image?

- Read-only template
- Contains all the dependencies
  - Configurations, scripts, binaries...
- Contains metadata:
  - Name, version, environment variables...

## Why containers?

- Lightweight: no need for a full OS
- Portable: image is easily shared
- Repeatable: same environment everywhere
- Isolation: no interference between containers
- CI/CD: easy to switch to previous versions (= images)

# Docker building blocks

## Port bindings

- By default: isolated network
  - More than one network is possible
- Expose container port to host

```bash
docker run -p 8080:80 nginx
```

## Volumes

![<small>Source: <https://docs.docker.com/storage/volumes/></small>](https://docs.docker.com/storage/images/types-of-mounts-volume.png)

## Volumes: volume

- Managed by Docker
- Resides in the *Docker area*

```bash
docker run -v volume_name:/path/in/container nginx
```

## Volumes: bind mount

- Folder on host mounted in container
- Folder can be anywhere on host

```bash
docker run -v /path/on/host:/path/in/container nginx
```

## Volumes: tmpfs mount

- Mount a temporary filesystem
- Resides in memory
- Data is not persistent

```bash
docker run --mount type=tmpfs,destination=/path/in/container nginx
```

## Docker Compose

- Define and run multi-container Docker applications
- Config: `docker-compose.yml`

# Get started with the lab assignment!

## Docker lab assignment

```console
cd dockerlab
vagrant up
vagrant ssh
```

Follow the steps in the assignment <https://github.com/HOGENT-MLOps/mlops-labs/blob/main/assignment/1-docker.md>

Portainer UI resides at <https://192.168.56.20:9443/>

## Setup

- Docker and Docker Compose are running on the VM
- Launch demo application in Docker container
- Expose the application to the host
- Attach a more robust database to the application
- Test the application
- Optimize the Docker image

# Reflection

## Lab setup vs reality

- Oversimplification
- Selfhosted vs managed database
- CI/CD pipeline for deployment and testing

## Best practices in the lab

- Package application with dependencies
- Don't expose database to the host
- Re-use Dockerfile
- Think about image layers
- Think about backups
