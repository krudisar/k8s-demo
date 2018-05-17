node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("krudisar/k8s-demo")
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image. */

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

    stage('Deploy to K8S') {
        /* Ideally, we would run a test framework against our image. */

        app.inside {
            /* sh 'echo "Container image build number:${env.BUILD_NUMBER}"' */
            // sh "echo \"Build number is: \"${env.BUILD_NUMBER}"
            // kubectl("get pods")

            sh """
            PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/demo/.local/bin:/home/demo/bin
            sudo /usr/bin/kubectl
            """
        }
    }
}

def kubectl(cmd) {
    return sh(script: "/usr/bin/kubectl  ${cmd}", returnStdout: true)
}
