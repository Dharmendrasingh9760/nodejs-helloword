pipeline {
        agent any
        stages {
                stage ("pull code from github"){
                        steps{
               git branch: 'master', url: 'https://github.com/Dharmendrasingh9760/nodejs-helloword.git'
                        }
                }
               
            
                stage ("Building docker image"){
                        steps{
                                sh 'sudo docker build -t node-hello:latest .'
                        }
                }
                
                stage ("Testing the Build"){
                        steps{
                                sh 'sudo docker run -dit --name node-js -p 4000:4000 node-hello:latest'
                        }
                }
        }
}
