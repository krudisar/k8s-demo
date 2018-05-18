node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('K8S Stage') {
        /* Ideally, we would run a test framework against our image. */
        sh "echo ${env.BUILD_NUMBER}"
        sh "export KUBECONF=/home/demo/kubeconf.conf"
        sh "kubectl get pods"
        sh "cat /home/demo/kubeconf.conf"
    }
}