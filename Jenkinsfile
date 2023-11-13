pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'monicaafg/ejemplo-mysql:${BUILD_NUMBER}'
    }

    stages {
        stage('Construir y etiquetar imagen') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Ejecutar contenedor') {
            steps {
                script {
                    def existingContainer = sh(script: "docker ps -q -f name=mi_aplicacion", returnStatus: true, returnStdout: true)
                    if (existingContainer == 0) {
                        sh "docker run -d -p 33060:3306 --name base-mysql --mount src=mysql-data,dst=/var/lib/mysql ${DOCKER_IMAGE}"
                    } else {
                        sh "docker stop base-mysql"
                        sh "docker rm base-mysql"
                        sh "docker run -d -p 33060:3306 --name base-mysql --mount src=mysql-data,dst=/var/lib/mysql ${DOCKER_IMAGE}"
                    }
                }
            }
        }

        stage('Pruebas') {
            steps {
                // Agrega aquí tus pruebas para verificar el correcto funcionamiento
                // Puedes utilizar comandos shell o scripts de prueba
            }
        }

        stage('Subir imagen a DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
                    sh "docker push ${DOCKER_IMAGE}"
                }
            }
        }
    }
}

