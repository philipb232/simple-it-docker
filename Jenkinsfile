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
        sh 'docker build -t philipb232/simple-it .'
      }
    }

  }
}