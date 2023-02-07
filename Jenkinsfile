pipeline {
   agent any 
    stages{ 
        stage{
            step{git checkout}{
                   git credentialsId: 'github', url: 'https://github.com/srinivas-charlie/dockins.git'
             }
        }
        stage {
            step{build}{
                   sh 'mvn clean install'
            }
        }  
    }
}