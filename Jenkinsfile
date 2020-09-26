pipeline{
 agent {label 'ansible'}
 stages{
  stage('Ansible deployment'){
   steps{
    sh "ansible all -m ping"
    }
   }
  stage('DOcker create and push remove pull'){
   steps{
     sh "ansible-playbook docker_create_push.yml"
    }
   } 
 }
} 
