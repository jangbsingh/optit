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
  stage('kube run on civo add in local'){
   steps{
     sh "ansible JB-local -a 'export KUBECONFIG=civo-k83-kubeconfig'"
    }
   }
  stage('create nginx deployment by kubernetes'){
   steps{
    script{
     try{
      sh "ansible JB-local -a 'kubectl apply -f /opt/nginx_deployment.yml '"
     }catch(error){
      sh "ansible JB-local -a 'kubectl create -f /opt/nginx_deployment.yml'"
     }
    }
   }
  } 
  stage('create nginx service by kubernetes'){
   steps{
    script{
     try{
      sh "ansible JB-local -a 'kubectl apply -f /opt/nginx_service.yml '"
     }catch(error){
      sh "ansible JB-local -a 'kubectl create -f /opt/nginx_service.yml "
     }
    }
   }
  }
  stage('create tomcat deployment by kubernetes'){
   steps{
    script{
     try{
      sh "ansible JB-local -a 'kubectl apply -f /opt/tomcat_deployment.yml'"
     }catch(error){
      sh "ansible JB-local -a 'kubectl create -f /opt/tomcat_deployment.yml'"
     }
    }
   }
  } 
  stage('create tomcat service by kubernetes'){
   steps{
    script{
     try{
      sh "ansible JB-local -a 'kubectl apply -f /opt/tomcat_service.yml'"
     }catch(error){
      sh "ansible JB-local -a 'kubectl create -f /opt/tomcat_service.yml'"
     }
    }
   }
  }
 }
} 
