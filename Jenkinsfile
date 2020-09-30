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
  stage('create nginx and tomcat deployment by kubernetes'){
   steps{
    script{
     try{
      sh "ansible JB-Ubuntu -a 'kubectl apply -f /opt/nginx_deployment.yml /opt/tomcat_deployment.yml'"
     }catch(error){
      sh "ansible JB-Ubuntu -a 'kubectl create -f /opt/nginx_deployment.yml /opt/tomcat_deployment.yml'"
     }
    }
   }
  } 
  stage('create nginx and tomcat service by kubernetes'){
   steps{
    script{
     try{
      sh "ansible JB-Ubuntu -a 'kubectl apply -f /opt/nginx_service.yml /opt/tomcat_service.yml'"
     }catch(error){
      sh "ansible JB-Ubuntu -a 'kubectl create -f /opt/nginx_service.yml /opt/tomcat_service.yml'"
     }
    }
   }
  }
 }
} 
