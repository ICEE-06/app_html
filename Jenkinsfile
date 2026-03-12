pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                git url: 'https://github.com/ICEE-06/app_html.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build --no-cache -t apache .'
            }
        }
    
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh '''
                docker compose down || true
                docker compose up -d --build --force-recreate
                '''
            }
        }
    }
}