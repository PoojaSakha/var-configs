pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/PoojaSakha/var-configs.git'
                echo 'git checkout done'
            }
        }

        stage('Get Version') {
            steps {
                script {
                    def version = sh(script: "grep '^version' build.gradle | awk '{print \$3}'", returnStdout: true).trim()
                    echo "Current project version: ${version}"
                }
            }
        }

        stage('Test') {
            steps {
                // Run tests using Gradle
                sh './gradlew test'
            }
        }

        stage('Package') {
            steps {
                // Package the application
                sh './gradlew bootJar'
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the application (this is just a placeholder, adjust as needed)
                echo 'Deploying application...'
            }
        }
    }
}