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
- Being able to push Docker images to a Docker registry

# Docker

## Deployment (r)evolution

![<small><em>Source: <https://kubernetes.io/docs/concepts/overview/></em></small>](assets/03-kubernetes/container_evolution.svg)

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

## Why are containers so popular?

- CI/CD: easy to switch to previous versions (= images)
- decouple application from infrastructure
- environmental consistency: runs the same on your pc as in the cloud
- resource isolation: predictable application performance
- resource utilization: high efficiency and density
- ...

# Docker building blocks

## Port bindings

- By default: isolated network
  - More than one network is possible
- Expose container port to host

```bash
docker run -p 8080:80 nginx
```

## Volumes

![<small><em>Source: <https://docs.docker.com/storage/volumes/></em></small>](https://docs.docker.com/storage/images/types-of-mounts-volume.png)

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

## Example: `docker-compose.yml`

```yaml
services:
  redis:
    image: redis:alpine
    ports:
      - '6379:6379'

  ml-app:
    build: .
    ports:
      - '8501:8501'
    depends_on:
      - redis
    volumes:
      - ./app.py:/code/app.py
      - ./data.py:/code/data.py
      - ./models.py:/code/models.py
```

# Get started with the lab assignment!

## Docker lab assignment

```console
cd dockerlab
vagrant up
vagrant ssh
```

Follow the steps in the assignment <https://github.com/HOGENT-MLOps/mlops-labs/blob/main/assignment/1-docker.md>

Also keep a cheat sheet of important commands!

## Portainer

- Web UI for Docker
- Runs on the VM in a Docker container
  - Just like in SELab, remember?

Portainer UI resides at <https://192.168.56.20:9443/>

## Setup

- Docker, Docker Compose and Portainer are running on the VM
- Launch demo application in Docker container
- Expose the application to the host
- Attach a more robust database to the application
- Test the application
- Optimize the Docker image
- Push the Docker image to Docker Hub

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
