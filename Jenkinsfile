pipeline {
  agent none
  stages {
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
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
        sh 'docker push cpg47b/jenkins:${BUILD_NUMBER}'
      }
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

