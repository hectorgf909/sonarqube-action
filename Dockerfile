FROM newtmitch/sonar-scanner:4.5

LABEL "com.github.actions.name"="SonarQube Scan"
LABEL "com.github.actions.description"="Scan your code with SonarQube Scanner to detect bugs, vulnerabilities and code smells in more than 25 programming languages."
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL version="0.0.2"
LABEL repository="https://github.com/hectorgf909/sonarqube-action-1"
LABEL maintainer="Héctor Gutiérrez"

ENV NO_PROXY="*.paas.cloudcenter.corp,localhost,127.0.0.1,*.isban.gs.corp"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
