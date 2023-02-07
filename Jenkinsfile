pipeline {
   agent any 
    stages{ 
        stage{git checkout}{
            step{
                   git credentialsId: 'github', url: 'https://github.com/srinivas-charlie/dockins.git'
             }
        }
        stage{build}{
            step{
                   sh 'mvn clean install'
            }
        }  
    }
}