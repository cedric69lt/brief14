pipeline{
    agent any
    
    tools {
        terraform 'terraform'
    }
     stages{
        stage('GitTest'){
            steps{
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cedric69lt/brief14']])
            }
        }
        stage('Terraform init'){
            steps{
                sh 'cd stagingEnvironment && terraform init'
            }
        }
        stage('Terraform plan'){
            steps{
                sh 'cd stagingEnvironment && terraform plan'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'cd stagingEnvironment && terraform apply -auto-approve'
            }
    }
    
    stage ('Docker Build') {
            steps {
                script {
                    sh 'cd app && sudo docker build -t image-brief14 .'
                    echo 'Build Image Completed'
                }    
            }
        }


        stage('Docker Login') {
            steps {
                script {
                    sh 'sudo docker login -u cedric69 -p Azertyty123' 
                }    
            }
        }

        stage ('Docker Push') {
            steps {
                script {
                    sh 'cd app && sudo docker push cedric69/image-brief14'        
                }    
            }
        } 
}
}
