pipeline {
    environment {
	registry = "vovanoti/cicd_exam"
	registryCredential = 'docker-credentials'
	dockerImage = ''
}
    agent any

    stages {
        stage('Testing') {
            steps {
                sh 'sh test.sh'
            }
        }
        stage('Bulding') {
            steps {
		script {
		    dockerImage = docker.build registry + ":$BUILD_NUMBER"
		}
		echo 'Building...'
            }
        }
	stage('Pushing the image'){
	    steps {
		script {
		    docker.withRegistry( '',registryCredential ){
			dockerImage.push()
		    }
		}
		echo 'Pushing...'
	    }
	}
    }
}
