node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('K8S Stage') {
        /* Ideally, we would run a test framework against our image. */
        sh "echo ${env.BUILD_NUMBER}"
        sh 'export KUBECONFIG=/home/demo/kubeconf.conf'
        sh 'echo $KUBECONFIG'
    }
}