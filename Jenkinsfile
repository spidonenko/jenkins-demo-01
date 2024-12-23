pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'mkdir -p build'
                sh 'printenv > build/env-output.txt'
            }
        }
    }
    post {
        always {
            archiveArtifacts 'build/**/*.txt'
            echo 'Clean up our workspace'
            deleteDir() /* clean up our workspace */
        }
        success {
            mail to: "${env.MAIL_TO}",
                subject: "Succeed Pipeline: cleaning-and-notifications",
                body: "Completed successfully: ${env.BUILD_URL}"
        }
        failure {
            mail to: "${env.MAIL_TO}",
                subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                body: "Something is wrong with ${env.BUILD_URL}"
        }
    }
}
