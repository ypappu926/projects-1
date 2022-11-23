pipeline {
   agent any
   
   def ensureSafeWorkspace(Closure block) {
	def maxWorkspacePathLen = 60;
	def isUnsafe = pwd().contains("%") || (pwd().length()>maxWorkspacePathLen);
	if (isUnsafe) { // Then we will request a new workspace...
		ws(safePath(env.JOB_NAME).take(maxWorkspacePathLen)) {
			block();
		}		
	} else { // Just call the closure in the current workspace (Avoid unnecessary master@2 workspace for example)
		block();
	}
}
   
   stages {
       stage('Build Code') {
           steps {
               sh """
               echo "Building Artifact"
               """
           }
       }
      stage('Deploy Code') {
          steps {
               sh """
               echo "Deploying Code on DEV"
               """
          }
      }
   }
}
