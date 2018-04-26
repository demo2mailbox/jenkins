#!groovy

pipeline {
  agent none
  stages {
    stage('Docker Build Latest') {
      agent any
      steps {
        sh './build.sh'
      }
    }
  }
}
