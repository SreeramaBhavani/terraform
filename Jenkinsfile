pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS-AccessKey')
        AWS_SECRET_ACCESS_KEY = credentials('AWS-SecretKey')
    }

    stages {

        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/SreeramaBhavani/terraform.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
