pipeline {
  agent any

  stages {
    stage('Construir Imagen Docker') {
      steps {
        script {
          docker.build("monicaafg/ejemplo-mysql:${env.BUILD_NUMBER}")
        }
      }
    }
  }
}
