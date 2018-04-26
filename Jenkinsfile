#!groovy

pipeline {
  agent none
  stages {
    stage('Docker Info') {
      agent any
      steps {
        sh 'docker info'
      }
    }
    stage('Docker Build Latest') {
      agent any
      steps {
        sh 'docker build -t cpg47b/jenkins:latest .'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t cpg47b/jenkins:${BUILD_NUMBER} .'
      }
    }
    stage('Docker Login') {
      agent any
      steps {
        sh 'docker login  -u cpg47b -p chhavi0709'
      }
    }
    stage('Docker Push') {
      agent any
      steps {
        sh 'docker push cpg47b/jenkins:${BUILD_NUMBER}'
      }
    }
    stage('Docker Push Latest') {
      agent any
      steps {
        sh 'docker push cpg47b/jenkins:latest'
      }
    }
  }
}

