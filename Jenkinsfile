
pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t Mahi7001/devops:${GIT_COMMIT} '
              
            }
        }
        stage ('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push') {
            steps {
                sh 'docker push Mahi7001/devops:${GIT_COMMIT} '
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}

