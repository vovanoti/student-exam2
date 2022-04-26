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
                sh 'sh start.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Hello Worlding....'
            }
        }
    }
}
