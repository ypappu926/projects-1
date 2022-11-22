pipeline {
	agent any
    environment {
        PATH =  "/opt/maven/apache-maven-3.8.6/bin:$PATH"
    }
  
    stages {
        stage("Git config"){
            steps {
                git branch: 'dev', url: 'https://github.com/ypappu926/projects-1.git'
            }
        }
        stage("Build Maven"){
            steps{
                sh "mvn clean package"
            }
        }
	    
    }
}
