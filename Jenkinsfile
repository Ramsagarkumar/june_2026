pipeline {
    agent any
    stages {
        stage('STAGE1') {
            steps {
                sh 'ls -lrt'
            }
        }

        stage('STAGE2') {
            steps {
                sh '''
                    pwd 
                    sleep 10
                    ls -lrt
                '''
            }
        }

        stage('STAGE3') {
            steps {
                echo "This is Stage3"
            }
        }

        stage('STAGE4') {
            steps {
                 sh 'echo THis is STAGE4'
            }
        }
    }
}
