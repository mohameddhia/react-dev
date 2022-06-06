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
                                url: 'https://github.com/mohameddhia/react-dev.git'
                            ]]])
                    }
                }
            }
            stage('Build'){
                steps{
                    script{
                        sh "sudo ansible-playbook Ansible/build.yml -i Ansbile/inventory/host.yml"
                    }
                }
            }
            stage('docker'){
                steps{
                    script{
                        sh "sudo ansible-playbook Ansible/docker.yml -i Ansbile/inventory/host.yml"
 
                    }
                }
            }
        }
}