FROM ghcr.io/appleboy/drone-gitlab-ci:1.2.0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
