FROM jenkins/jenkins:lts

USER root

RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    apt-get update && \
    apt-get -y install sudo && \
    echo "jenkins ALL=(ALL) NOPASSWD: /opt/scripts/init.sh" >> /etc/sudoers

COPY ./scripts /opt/scripts

USER jenkins

ENTRYPOINT sudo /opt/scripts/init.sh && /sbin/tini -- /usr/local/bin/jenkins.sh