pipeline {
  agent any
  stages {
    stage('copy artefacts') {
      steps {
        copyArtifacts 'simple-it-client/master'
        copyArtifacts 'simple-it-server/master'
      }
    }

    stage('docker build') {
      steps {
        sh 'docker.build registry'
      }
    }

  }
  environment {
    registryCredential = '608aae94-9b81-46d4-9bc3-4aeafa416485'
    registry = 'philipb232/simple-it'
  }
}