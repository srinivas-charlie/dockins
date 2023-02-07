pipeline {
   agent any 
    stages{ 
        stage("git checkout"){
            steps{
                   git credentialsId: 'github', url: 'https://github.com/srinivas-charlie/dockins.git'
             }
        }
        stage("build"){
            steps{
                sh 'mvn clean install'
            }
        }
        stage("workdir"){
            steps{
                sh 'echo "pwd"'
            }
        }
        stage("docker image"){
            steps{
                sh 'sudo docker build -t shaik/tomcat:shaik . '
            }
        }  
    }
}