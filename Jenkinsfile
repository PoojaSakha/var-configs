pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                git 'https://github.com/PoojaSakha/var-configs.git'
            }
        }

        stage('Build') {
            steps {
                // Build the project using Gradle
                sh './gradlew clean build'
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

    post {
        always {
            // Archive the build artifacts
            archiveArtifacts artifacts: 'build/libs/*.jar', allowEmptyArchive: true
        }
        success {
            // Notify success (this is just a placeholder, adjust as needed)
            echo 'Build and deployment successful!'
        }
        failure {
            // Notify failure (this is just a placeholder, adjust as needed)
            echo 'Build or deployment failed.'
        }
    }
}