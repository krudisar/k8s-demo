node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image. */
        echo 'Tests passed'
    }

    stage('Deploy image') {
        /* Ideally, we would run a test framework against our image. */
        // echo 'Deploy image'
        sh 'docker --version'
    }

    stage('K8S Stage') {
        /* Ideally, we would run a test framework against our image. */
        sh 'echo ${env.BUILD_NUMBER}'
        sh 'kubectl'
    }
}