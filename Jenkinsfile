pipeline {
    agent { label 'myubuntu' }

     environment {
        clientsecrt     = credentials('clientsecret')
        
    }

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/sounair/jenkins.git'

                // Run Maven on a Unix agent.
                sh "terraform init -var=clients=${clientsecrt}"
                sh "terraform plan -var=clients=${clientsecrt}" 
                sh "terraform apply var=clients=${clientsecrt} -auto-approve"

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }

            
            }
        }
    }

