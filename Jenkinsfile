pipeline {
    agent any

    stages {


        stage('Lint HTML') {
            steps {
                script {
                    docker.image('validator/validator').inside {
                        sh 'vnu-runtime-image myfile.html'
                    }
                }
            }
        }

        stage('Upload to S3') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'your-credentials-id', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    sh '''
                    aws s3 cp myfile.html s3://your-bucket/
                    '''
                }
            }
        }
    }
}
