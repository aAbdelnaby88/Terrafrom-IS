pipeline {
    agent any

    stages {
        stage('init') {
            steps {
                sh 'terraform init -var accessKey=\"${env.AWS_ACCESS_KEY_ID}\" -var secretKey=\"${env.AWS_SECRET_ACCESS_KEY}\"' 
            }
        }
        stage('apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}