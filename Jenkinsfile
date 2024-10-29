pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "jashanveer/survey-app:latest"
        DOCKER_REGISTRY = ""
        KUBE_CONFIG = credentials('kubeconfig') // Use Jenkins credentials to store kubeconfig
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry(DOCKER_REGISTRY, 'docker-credentials') {
                        docker.image(DOCKER_IMAGE).push()
                    }
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    kubernetesDeploy(
                        configs: 'deployment.yaml',
                        kubeconfigId: KUBE_CONFIG
                    )
                }
            }
        }
    }
}