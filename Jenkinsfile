pipeline {
    agent any

    environment {
        IMAGE_NAME = 'jenkins_image'
        IMAGE_TAG  = "${BUILD_NUMBER}"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                    docker build \
                        -t ${IMAGE_NAME}:${IMAGE_TAG} \
                        -t ${IMAGE_NAME}:latest \
                        .
                '''
            }
        }

        stage('Show Docker Images') {
            steps {
                sh 'docker images ${IMAGE_NAME}'
            }
        }
    }

    post {
        success {
            echo "Docker image built successfully: ${IMAGE_NAME}:${IMAGE_TAG}"
        }

        failure {
            echo "Docker image build failed!"
        }
    }
}
