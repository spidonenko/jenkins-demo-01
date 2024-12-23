pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Run build"'
                sh 'printenv > build/env-output.txt'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Run some tests - generating report"'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'build/**/*.txt', fingerprint: true
            junit 'build/reports/**/*.xml'
        }
    }
}
