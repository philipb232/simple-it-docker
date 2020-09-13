pipeline {
  agent any
  stages {
    stage('copy server artifact') {
      steps {
        copyArtifacts 'simple-it-server/master'
      }
    }

    stage('docker build') {
      steps {
        script {
          dockerImage = docker.build registry + ":" + build
        }
      }
    }

    stage('docker push') {
      steps {
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }

  }
  environment {
    registryCredential = '608aae94-9b81-46d4-9bc3-4aeafa416485'
    registry = 'philipb232/simple-it'
    build = 'nightly'
    dockerImage = ''
  }
}
