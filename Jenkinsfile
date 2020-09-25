pipeline{
 agent {label 'ansible'}
 stages{
  stage('Ansible deployment'){
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
