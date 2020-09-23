pipeline{
 agent {label 'ansible'}
 stages{
  parallel{
    stage('Ansible ping command'){
     steps{
      sh "ansible all -m ping"
     }
    }
    stage('node_exporter installation'){
     steps{
      sh "ansible-playbook node_exporter.yml"
     }
    } 
    stage('prometheus installation'){
     steps{
      sh "ansible-playbook ins_prometheus.yml"
     }
    }  
    stage('grafana installation'){
     steps{
      sh "ansible-playbook ins_grafana.yml"
     }
    }    
  }
 }
} 
