pipeline{
 agent none
 stages{
  stage('Ansible ping command'){
   agent {label 'ansible'}
   steps{
    sh "ansible all -m ping"
    sh "echo node_exporter installation"
    sh "ansible-playbook node_exporter.yml"
    sh "echo Node exporter installation done" 
    sh "echo prometheus installation"
    sh "ansible-playbook ins_prometheus.yml"
    sh "echo prometheus installation done"
    sh "echo grafana installation"
    sh "ansible-playbook ins_grafana.yml"
    sh "echo grafana installation done" 

   }
  }
 }
} 
