pipeline {
   agent any
   stages {
       stage('Build Code') {
           steps {
               sh """
               echo "Building Artifact"
               echo $WORKSPACE
               """
           }
       }
      stage('Deploy Code') {
          steps {
               sh """
               echo "Deploying Code Dev"
               """
          }
      }
   }
}
