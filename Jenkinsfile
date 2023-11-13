pipeline {
  agent any

  stages {
    stage('Clonar Repositorio') {
      steps {
        checkout scm
      }
    }
    stage {
      stage('Docker build') {
        steps {
          sh "docker build -t db-mysql:1.1.0 ."
        }
      }
    }
  }
}
