# Docker Build
```
git clone git@github.com:arubasu/jenkins_jcac.git
docker build -t <DOCKERHUB_USERNAME>/jenkins:jcac .
```

# Docker run
```
docker run --name jenkins -d --restart=unless-stopped \
    -p 80:8080 \
    -v </PATH/TO/jenkins_home>:/var/jenkins_home \
    --privileged \
    --env JENKINS_ADMIN_ID=<USERNAME> \
    --env JENKINS_ADMIN_PASSWORD=<PASSWORD> \
    --env JENKINS_SERVER_IP=<IP_ADDRESS> \
    arubasu/jenkins:jcac
```
# Docker push
```
docker login
docker push <DOCKERHUB_USERNAME>/jenkins:jcac
```
