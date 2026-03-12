pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                https://github.com/ICEE-06/app_html.git
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t apache .'
            }
        }
    
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh '''
                docker compose down || true
                docker compose up -d --build
                '''
            }
        }
    }
}