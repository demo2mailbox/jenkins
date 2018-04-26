#!/bin/bash
    docker info
    pwd
    docker build -t cpg47b/cpg47b:${BUILD_NUMBER} .
    docker images
    docker rm -f chetan
    docker run -d --name chetan -p 8721:80 cpg47b/cpg47b:${BUILD_NUMBER}
