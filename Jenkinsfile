pipeline {
	agent any
	environmet {
	PATH: "/opt/maven/apache-maven-3.8.6/bin:$PATH"
	}
    stages {
        stage("Git Clone"){
            steps {
                git url:
            }
        }
        stage("Build Maven"){
            steps{
                sh "mvn clean install"
            }
        }
    }
    
}