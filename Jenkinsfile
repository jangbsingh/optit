pipeline{
 agent {label 'ansible'}
 stages{
  stage('Ansible deployment'){
   steps{
    sh "ansible all -m ping"
    }
   }
  stage('copy kube yml file'){
   steps{
     sh "ansible-playbook kube-create.yml"
    }
   } 
 }
} 
