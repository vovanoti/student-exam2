pipeline {
    agent any

    stages {
        stage('Testing') {
            steps {
                sh 'sh test.sh'
            }
        }
        stage('Bulding') {
            steps {
		echo 'Building...'
               #docker.build("vovanoti/cicd_exam:calc_js")
            }
        }
	stage('Pushing the image'){
	    steps {
		echo 'Pushing...'
	    }
	}
    }
}
