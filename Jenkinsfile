pipeline {
    agent any

    environment {
        APP_NAME = 'cloudmart'
        DOCKER_IMAGE = 'cloudmart-app'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                dir('app') {
                    sh 'npm install'
                }
            }
        }

        stage('Test') {
            steps {
                dir('app') {
                    sh 'npm test --if-present'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cloudmart-app:${BUILD_NUMBER} ./app'
            }
        }
    }

    post {
        success {
            echo 'CloudMart Phase 2 pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the Jenkins console output.'
        }
    }
}

