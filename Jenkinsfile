pipeline{
    agent any
    
    environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
	
    stages {
        
        stage("Pulll code from github")
        {
            steps { 
                git branch: 'main', url: 'https://github.com/Amitroyar/Docker-integration.git'
            }
        }
        
        stage("build")
        {
            steps {
                sh 'docker build -t test .'
            }
        }
        
        stage("Login")
        {
            steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
            
        }
        
        stage('Push') {

			steps {
			    sh 'docker tag test amitroy3ar/docker:latest'
				sh 'docker push amitroy3ar/docker:latest'
			}
		}
		
		
    }
    post {
		always {
			sh 'docker logout'
		}
	}

}
