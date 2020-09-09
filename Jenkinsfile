pipeline {
  agent any
  stages {
    stage('copy artefacts') {
      steps {
        copyArtifacts 'simple-it-client'
        copyArtifacts 'simple-it-server'
      }
    }

    stage('docker build') {
      steps {
        sh 'docker build -t philipb232/simple-it .'
      }
    }

  }
}