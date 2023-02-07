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
                sh 'pwd'
                sh 'sudo -i'
            }
        }
        stage("docker image"){
            steps{
                sh 'docker build -t shaik/tomcat:shaik . '
            }
        }  
    }
}