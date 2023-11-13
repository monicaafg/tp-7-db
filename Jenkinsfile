pipeline {
    environment { 
		registry = "monicaafg/tp-7-db-jenkins" registryCredential = 'fed68c28-83fb-4de9-8e85-eceae46b0723' dockerImage = '' 
	}
    
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
