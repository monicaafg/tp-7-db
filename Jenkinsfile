pipeline {    
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "cd /var/lib/jenkins/workspace/pipeline-bd"
                sh "docker build -t monicaafg/ejemplo-mysql:${BUILDER_ID} ."
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Publicar') {
            steps {
                echo 'Subir a DockerHub....'
            }
        }
    }
}
