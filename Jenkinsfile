pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/Amitroyar/Docker-integration.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t amitroy3ar/jenkins:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push amitroy3ar/jenkins:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
