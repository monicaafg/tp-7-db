pipeline {
  agent any

  stages {
    stage('Construir Imagen Docker') {
      steps {
        sh "docker build -t monicaafg/ejemplo-mysql:${env.BUILD_NUMBER} ."
      }
    }
  }
}
