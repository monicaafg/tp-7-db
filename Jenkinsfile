pipeline {
  agent any

  stages {
    stage('Construir Imagen Docker') {
      steps {
        script {
          docker.buildx("monicaafg/ejemplo-mysql:${env.BUILD_NUMBER}")
        }
      }
    }
  }
}
