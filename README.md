# Docker Build
```
git clone git@github.com:arubasu/jenkins_jcac.git
docker build -t jenkins:jcac .
```

# Docker run
```
docker run --name jenkins -d --restart=unless-stopped -p 80:8080 -v /var/jenkins_home:/var/jenkins_home --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password --env JENKINS_SERVER_IP=<IP> jenkins:jcac
```

