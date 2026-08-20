# Docker Build and Push Pipeline

This directory contains a CI/CD pipeline that builds and publishes a Docker image to Docker Hub using GitHub Actions.

The pipeline runs on push, builds the image from a scoped context, tags it, and pushes it to Docker Hub using credentials managed through GitHub Actions secrets.

The pipeline stops at the artefact stage by design.
Image publishing is handled in CI, with deployment intentionally kept separate.

---

## What this Pipeline Demonstrates

- Building a Docker image in CI using an explicit build context
- Publishing images to Docker Hub as part of an automated workflow
- Secure authentication using GitHub Actions secrets
- Keeping CI behaviour predictable and easy to reason about

---

## Pipeline Behaviour

- Triggered on push
- Builds the image from the `docker-build-push` directory
- Tags the image explicitly
- Pushes the image to Docker Hub
- Does not deploy or run containers

---

## Successful Checks

<p align="center">
  <img src="/assets/docker-build-push.png" alt="Successful Docker build and push pipeline run" width="1000">
</p>

