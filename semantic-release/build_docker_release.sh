#!/bin/sh

if grep docker .releaserc 1>/dev/null; then
  echo "Docker configuration found in .releaserc"
  echo -n $CI_REGISTRY_PASSWORD | docker login -u $CI_REGISTRY_USER --password-stdin $CI_REGISTRY
  docker build --target final -t "$DOCKER_RELEASE_IMAGE" .
else
  echo "No docker configuration found in .releaserc. Skipping build"
fi
