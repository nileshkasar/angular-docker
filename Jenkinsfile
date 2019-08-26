node {
      def app

      stage('clone repositiry'){
      
          checkout scm
	}
    
      stage('build image'){
         
          sh 'npm install'
          sh 'npm run ng build'
	
      }

      stage('building image'){

       app = docker.build("nileshrk23787/angulardocker")
	}

       stage('push image'){
       
        docker.withRegistry('https://cloud.docker.com/repository/registry-1.docker.io/nileshrk23787/angulardocker','dockerhub'){
	app.push(":$BUILD_NUMBER")
	 }
	}
}
