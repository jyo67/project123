pipeline {
    agent any
    tools {
        // Install the Maven version configured as "M3" and add it to the path.
           maven
    }

    stages {
        stage('Validate') {
            steps {
                echo 'Validate..'
                sh 'mvn validate'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
