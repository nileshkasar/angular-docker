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

      def app = sh 'docker build -t nileshrk23787/angulardocker:1 .'
      }

      stage('push image'){
       
        docker.withRegistry('https://cloud.docker.com/repository/registry-1.docker.io/nileshrk23787/angulardocker','dockerhub'){
	 sh 'echo "i am here"'
	 app.push(":$BUILD_NUMBER")
	 }
      }
}
