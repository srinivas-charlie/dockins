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
            }
        }
        stage("docker image"){
            steps{
                sh 'docker build -t shaik/tomcat:shaik . '
                

                sh 'docker run -itd -p 8081:8080 --name tomcat shaik/tomcat:shaik'
            }
        }  
    }
}