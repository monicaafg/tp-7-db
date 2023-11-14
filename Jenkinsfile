pipeline {    
    agent any

    environment {
        DB_IMAGE = 'monicaafg/ejemplo-mysql'
        DB_CONTAINER = 'base-mysql'
    }    

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "cd /var/lib/jenkins/workspace/pipeline-bd"
                sh "docker build -t ${env.DB_IMAGE}:${env.BUILD_NUMBER} ."
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo 'Corriendo el contenedor...'
                script {
                    def existingContainer = sh(script: "docker ps -q -f name=${env.DB_CONTAINER}", returnStatus: true, returnStdout: true)
                    if (existingContainer == 0) {
                        sh "docker run -d -p 33060:3306 --name ${env.DB_CONTAINER} --mount src=mysql-data,dst=/var/lib/mysql ${env.DB_IMAGE}:${env.BUILD_NUMBER}"
                    } else {
                        sh "docker stop ${env.DB_CONTAINER}"
                        sh "docker rm ${env.DB_CONTAINER}"
                        sh "docker run -d -p 33060:3306 --name ${env.DB_CONTAINER} --mount src=mysql-data,dst=/var/lib/mysql ${env.DB_IMAGE}:${env.BUILD_NUMBER}"
                    }
                }
                //sh "docker run -d -p 33060:3306 --name ${env.DB_CONTAINER} --mount src=mysql-data,dst=/var/lib/mysql ${env.DB_IMAGE}:${env.BUILD_NUMBER}"
                //sh "docker ps"
                //sh "docker exec -it ${env.DB_CONTAINER} mysql -p"
                //sh "sleep 10"
                //sh "docker stop ${env.DB_CONTAINER}"
                //sh "docker rm ${env.DB_CONTAINER}"             
            }
        }
        stage('Publicar') {
            steps {
                echo 'Subir a DockerHub....'
                //sh "docker push monicaafg/ejemplo-mysql:${env.BUILD_NUMBER}"
            }
        }
    }
}
