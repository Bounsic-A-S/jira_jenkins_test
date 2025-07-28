pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }

        stage('Deploy - Staging') {
            when {
                branch 'main'
            }
            steps {
                echo 'Deploying to Staging from main...'
            }
        }

        stage('Deploy - Production') {
            when {
                branch 'main'
            }
            steps {
                echo 'Deploying to Production from main...'
            }
        }
    }

    post {
        always {
            script {
                // Enviar información de build a Jira
                jiraSendBuildInfo()

                // Enviar despliegues a Jira (puedes condicionar esto con env vars si quieres)
                jiraSendDeploymentInfo(
                    environmentId: 'us-stg-1',
                    environmentName: 'us-stg-1',
                    environmentType: 'staging'
                )
                jiraSendDeploymentInfo(
                    environmentId: 'us-prod-1',
                    environmentName: 'us-prod-1',
                    environmentType: 'production'
                )
            }
        }
    }
}
