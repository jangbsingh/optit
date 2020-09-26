pipeline{
 agent {label 'ansible'}
 stages{
  stage('Ansible deployment'){
   steps{
    sh "ansible all -m ping"
    }
   }
  stage('Docker hub login and create'){
   steps{
    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
      sh "ansible JB-Ubuntu -a 'docker login -u jangbsingh -p ${dockerhub}'"
      sh "ansible-playbook docker_create_push.yml"
    }
    }
   } 
 }
} 
