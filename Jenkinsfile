pipeline {
  agent any

  stages {
    stage('Docker build') {
      steps {
        scripts{
          sh "docker build -t db-mysql:1.1.0 ."
        }
      }
    }
  }
}
