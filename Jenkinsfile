pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                sh 'sh test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker images'
            }
        }
    }
}
