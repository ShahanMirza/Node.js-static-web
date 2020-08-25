node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/repository/docker/muhammadshahan/jenkins', 'dockerHub') {

        def customImage = docker.build("AIM:Docker-web")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
