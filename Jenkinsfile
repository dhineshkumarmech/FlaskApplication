pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'tomcat:latest'
        APP_NAME = 'FlaskApplication'
        DOCKER_HOST = 'tcp://localhost:2375'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/dhineshkumarmech/FlaskApplication.git'
            }
        }

        stage('Build Flask Application') {
            steps {
                bat 'cd flask-app && pip install -r requirements.txt'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat "docker build -t ${APP_NAME}:latest .\\flask-app"
                }
            }
        }

        stage('Deploy to Tomcat in Docker') {
            steps {
                script {
                    bat "docker -H ${DOCKER_HOST} run -p 8080:8080 -d --name ${APP_NAME} ${APP_NAME}:latest"
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                script {
                    bat 'timeout /t 30'
                    bat 'docker ps'
                }
            }
        }

        stage('Cleanup') {
            steps {
                script {
                    bat "docker stop ${APP_NAME}"
                    bat "docker rm ${APP_NAME}"
                }
            }
        }
    }
}
