pipeline{
 agent {label 'ansible'}
 stages{
  stage('Ansible deployment'){
   steps{
    sh "ansible all -m ping"
    }
   }
  stage('Docker hub login'){
   steps{
    sh "ansible JB-Ubuntu -a 'docker login -u jangbsingh -p ${dockerhub}'"
   }
  }
  stage('Docker file create'){
   steps{
    sh "ansible-playbook docker_create_push.yml"
    }
   } 
 }
} 
