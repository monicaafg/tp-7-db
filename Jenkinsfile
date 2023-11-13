pipeline {
  agent any

  stages {
    stage('Docker build') {
      steps {
        scripts{
          sh "docker build -t Dockerfile monicaafg/ejemplo-mysql:1.1.0- ${BUILD_ID} ."
        }
      }
    }
  }
}
