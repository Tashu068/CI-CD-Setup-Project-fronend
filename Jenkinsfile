pipeline {
    agent any

    environment {
        IMAGE_NAME = "ats-data-app"
        CONTAINER_NAME = "ats-data"
        GIT_REPO = "https://github.com/your-org/ATS-Data.git" // 🔁 Replace with your repo
        BRANCH = "main"
        CREDENTIALS_ID = "github-creds"
        APP_PORT = "8000"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: "${GIT_REPO}", branch: "${BRANCH}", credentialsId: "${CREDENTIALS_ID}"
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Stop Existing Container') {
            steps {
                sh "docker rm -f ${CONTAINER_NAME} || true"
            }
        }

        stage('Run Docker Container') {
            steps {
                sh "docker run -d -p ${APP_PORT}:${APP_PORT} --name ${CONTAINER_NAME} ${IMAGE_NAME}"
            }
        }
    }

    post {
        success {
            echo "✅ ATS-Data Python app is running on port ${APP_PORT}"
        }
        failure {
            echo "❌ Deployment failed. Check Jenkins and Docker logs."
        }
    }
}
