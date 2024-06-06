pipeline{
  agent any 
  stages{
    stage("Docker Cleanup"){
      steps{
        sh "docker stop \$(docker ps -aq) || true"
        sh "docker rm \$(docker ps -aq) || true"
      }
    }
    stage("Build Docker Image"){
      steps{
        sh "docker build -t node-app-image ."
      }
    }
    stage("Run Docker container"){
      steps{
        sh "docker run -d -p 80:5000 --name node-app node-app-image"
      }
    }
  }
}
