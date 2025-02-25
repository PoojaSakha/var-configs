pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from the repository
                sh 'git clone https://github.com/PoojaSakha/var-configs.git'
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
}