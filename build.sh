#!/bin/bash
    docker info
    pwd
    docker build -t cpg47b/jenkins-new:${BUILD_NUMBER} .
#    docker images
    docker login -u cpg47b -p chhavi0709
    docker push cpg47b/jenkins-new:${BUILD_NUMBER} 
    docker rm -f chetan4
    docker run -d --name chetan4 -p 8707:80 cpg47b/jenkins-new:${BUILD_NUMBER}
