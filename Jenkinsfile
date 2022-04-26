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
		sh 'whoami'
                sh 'sh test.sh'
            }
        }
        stage('Bulding') {
            steps {
		script {
		    //dockerImage = docker.build registry + ":$BUILD_NUMBER"		
		    dockerImage = docker.build registry + ":latest"
		}
		echo 'Building...'
            }
        }
	stage('Pushing the image'){
	    steps {
		withDockerRegistry([ credentialsId: "docker-credentials", url: "" ]){
		    sh "docker push vovanoti/cicd_exam:latest"
		}
		echo 'Pushing...'
	    }
	}
    }
}
