pipeline {
  agent any
  stages {
    stage('SMC') {
      steps {
        mineRepository(scm: 'checkout scm')
      }
    }

    stage('Build') {
      agent {
        docker {
          image 'openjdk:12-alpine'
        }

      }
      steps {
        sh './gradlew build'
      }
    }

    stage('Unit test') {
      agent {
        docker {
          image 'openjdk:12-alpine'
        }

      }
      steps {
        sh ' ./gradlew test'
      }
    }

  }
}