FROM registry.global.ccc.srvb.can.paas.cloudcenter.corp/sdi-devops-gsc/sonar-scanner:4.5

LABEL "com.github.actions.name"="SonarQube Scan"
LABEL "com.github.actions.description"="Scan your code with SonarQube Scanner to detect bugs, vulnerabilities and code smells in more than 25 programming languages."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.2"
LABEL repository="https://github.com/kitabisa/sonarqube-action"
LABEL homepage="https://kitabisa.github.io"
LABEL maintainer="dwisiswant0"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
