pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    sh 'rm -rf var-configs'
                    sh 'git clone https://github.com/PoojaSakha/var-configs.git'
                    echo 'git checkout done'
                }
            }
        }

        stage('Get Version') {
            steps {
                script {
                    def version = sh(script: "grep '^version' var-configs/build.gradle | awk '{print \$3}'", returnStdout: true).trim()
                    echo "Current project version: ${version}"
                    build job: 'job2', parameters: [string(name: 'VERSION', value: version)]
                }
            }
        }

        stage('Test') {
            steps {
                sh 'cd var-configs && ./gradlew test'
            }
        }

        stage('Package') {
            steps {
                sh 'cd var-configs && ./gradlew bootJar'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}