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
                sh '. venv/bin/activate && pip install -e '.[test]' && coverage run -m pytest && coverage report'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Hello Worlding....'
            }
        }
    }
}
