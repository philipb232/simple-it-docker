pipeline {
  agent any
  stages {
    stage('copy artefacts') {
      steps {
        copyArtifacts 'simple-it-client/master'
        copyArtifacts 'simple-it-server/master'
        sh '''tell Dockerfile
ls target'''
      }
    }

    stage('docker build') {
      steps {
        sh 'docker build -t philipb232/simple-it .'
      }
    }

  }
}