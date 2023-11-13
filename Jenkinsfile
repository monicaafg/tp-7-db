pipeline {
  agent any

  stages {
    stage {
      stage('Docker build') {
        steps {
          sh "docker build -t db-mysql:1.1.0 ."
        }
      }
    }
  }
}
