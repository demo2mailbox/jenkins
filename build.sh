#!/bin/bash
ls
docker info
docker build -t katacoda/jenkins-demo:${BUILD_NUMBER} .
docker tag katacoda/jenkins-demo:${BUILD_NUMBER} katacoda/jenkins-demo:latest
docker images
