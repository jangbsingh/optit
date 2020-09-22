pipeline{
 agent none
 stages{
  stage('Ansible ping command'){
   agent {label 'ansible'}
   steps{
    sh "ansible all -m ping"
   }
  }
 }
} 
