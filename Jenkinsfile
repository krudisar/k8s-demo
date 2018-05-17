node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    };

    
    stage('Deploy to K8S') {
        /* Ideally, we would run a test framework against our image. */

        app.inside {
            sh 'docker'
        }
    }
}