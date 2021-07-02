pipeline {
    agent any
    environment {
        ACCOUNT_ID = '1607652824904310'
        REGION    = 'cn-hangzhou'
    }
    stages {
        stage('检出代码') {
            steps {
                checkout([
          $class: 'GitSCM',
          branches: [[name: env.GIT_BUILD_REF]],
          userRemoteConfigs: [[
            url: env.GIT_REPO_URL,
            credentialsId: env.CREDENTIALS_ID
        ]]])
            }
        }

        stage('申请证书') {
            steps {
                withCredentials([cloudApi(credentialsId: 'ca25bc86-c0dc-4b7f-a9a9-3074cfce12fa', secretIdVariable: 'Ali_Key', secretKeyVariable: 'Ali_Secret')]) {
                    sh './issue'
                }
            }
        }
        stage('申请证书') {
            steps {
                sh 'echo "TODO"'
            }
        }
    }
}
