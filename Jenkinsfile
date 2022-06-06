pipeline
{
    agent any
        stages{
            stage('Pull'){
                steps{
                    script{
                        checkout([$class: 'GitSCM',branches: [[name: '*/master']] ,
                            userRemoteConfigs: [[
                                credientialsId: 'dhia-lab1',
                                url: 'https://github.com/mohameddhia/lab1.git'
                            ]]])
                    }
                }
            }
            stage('Build'){
                steps{
                    script{
                        sh "ansible-playbook Ansible/build.yml -i Ansbile/inventory/host.yml"
                    }
                }
            }
        }
}