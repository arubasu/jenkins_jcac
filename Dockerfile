FROM jenkins/jenkins:lts

COPY casc.yaml /usr/share/jenkins/casc.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /usr/share/jenkins/casc.yaml

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt


