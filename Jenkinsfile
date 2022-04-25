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
                sh 'python3 ./tests/conftest.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Hello Worlding....'
            }
        }
    }
}
