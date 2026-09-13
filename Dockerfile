FROM jenkins/jenkins:lts

USER root

# Install Docker CLI if Jenkins needs to run Docker commands
RUN apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

USER jenkins

EXPOSE 8080 50000

CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
