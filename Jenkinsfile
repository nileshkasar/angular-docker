node {
      stage('clone repositiry'){
      
          checkout scm
	}
    
      /*stage('build image'){
       *   sh 'npm install'
       *   sh 'npm run ng build'
	    }*/

  
	  stage('push image'){
       
     sh 'docker login --username nileshrk23787 --password nilesh235'
	 def app = docker.build("nileshrk23787/angulardocker:1")
	 sh 'echo "i am here"'
	 app.push()
      }
}
