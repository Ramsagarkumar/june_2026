FROM jenkins/jenkins:lts

USER root

# Install Docker CLI if Jenkins needs to run Docker commands
RUN sudo apt-get update \
    && sudo apt-get install -y docker.io \
    && sudo rm -rf /var/lib/apt/lists/*

USER jenkins

EXPOSE 8080 50000

CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
