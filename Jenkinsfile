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
                sh 'docker build -t srinivascharlie/dev:dockins  .'
                

            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u srinivascharlie -p ${dockerhubpwd}'

            
                   sh 'docker push srinivascharlie/dev:dockins'


                   }
                }
            }
        }
        stage('Deploy to k8s'){
            steps{
                script{
                    kubernetesDeploy (configs: 'deploymentservice.yaml',kubeconfigId: 'k8sconfigpwd')
                }
            }
        }
          

    }
}