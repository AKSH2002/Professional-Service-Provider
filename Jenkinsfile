pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from your version control system 
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build a Docker image using the Dockerfile in the project directory
                script {
                    docker.build("services-provider")
                }
            }
        }


        stage('Deploy Website') {
            steps {
                // Deploy the Docker container to server 
                sh 'docker run -d -p 80:80 --name services services-provider'
            }
        }
    }

    post {
        success {
            // Notify or perform additional actions on success
            echo 'Website deployment successful'
        }
    }
}
