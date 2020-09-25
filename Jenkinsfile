pipeline{
 agent {label 'ansible'}
 stages{
  stage('Ansible deployment'){
     stage('Ansible ping command'){
      steps{
       sh "ansible all -m ping"
      }
     }
     stage('Docker file create'){
      steps{
       sh "ansible-playbook docker_create_push.yml"
      }
     } 
  }
 }
} 
