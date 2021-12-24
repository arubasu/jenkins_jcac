# Docker Build
```
git clone git@github.com:arubasu/jenkins_jcac.git
docker build -t jenkins:jcac .
```

# Docker run
```
docker run --name jenkins -d --restart=unless-stopped \
    -p 80:8080 \
    -v /Users/arunava/delme/jenkins_home:/var/jenkins_home \
    --privileged \
    --env JENKINS_ADMIN_ID=username \
    --env JENKINS_ADMIN_PASSWORD=password \
    --env JENKINS_SERVER_IP=1.2.3.4 \
    arubasu/jenkins:jcac
```
# Docker push
```
docker login
docker push arubasu/jenkins:jcac
```
