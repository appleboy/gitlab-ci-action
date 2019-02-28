FROM appleboy/drone-gitlab-ci:linux-amd64

# Github labels
LABEL "com.github.actions.name"="Trigger GitLab CI"
LABEL "com.github.actions.description"="Triggering GitLab-CI pipelines through the API"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/appleboy/gitlab-ci-action"
LABEL "homepage"="https://github.com/appleboy"
LABEL "maintainer"="Bo-Yi Wu <appleboy.tw@gmail.com>"
LABEL "version"="0.0.1"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
