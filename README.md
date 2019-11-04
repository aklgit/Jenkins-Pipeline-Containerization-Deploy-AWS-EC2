# In this project, accomplished the following.
    1. Created multiple docker images using docker-compose.yml.
       a. Used Dockerfile to create a Jenkins Image using which Jenkins can run as a container.
       b. Installed ansible,docker and docker-compose on the Jenkins image
       c. Mapping volumes with host machine and  containers to save work if a container is stopped.
       d. Map host /var/run/docker.sock file with docker image.
## Build

Below are the build steps for packaging a java app using maven

       a. Map host java app code to maven container /app.
       b. Map host /root/.m2 folder to maven container /root/.m2 to avoid repeated downloads.
       c. Use mvn package to create a jar file.
       d. create a docker image with java openjdk and jar file to ship the final image ready to be deployed.

