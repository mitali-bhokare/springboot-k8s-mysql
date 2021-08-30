#!/bin/bash -xe

cd ..

DOCKER_REPO="mitali7692/intuit"

REPO_NAME_AND_TAG="${DOCKER_REPO}":$(date +"%H.%M.%S")


# Build app docker container
echo "The project version is ${REPO_NAME_AND_TAG}"
docker build -t "${REPO_NAME_AND_TAG}" .

# Push app container to docker hub
docker push "${REPO_NAME_AND_TAG}"
