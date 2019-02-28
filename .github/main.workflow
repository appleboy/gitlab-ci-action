workflow "Trigger GitLab Jobs" {
  on = "push"
  resolves = [
    "Trigger New Job",
  ]
}

action "Trigger New Job" {
  uses = "appleboy/gitlab-ci-action@master"
  secrets = [
    "GITLBA_PROJECT_ID",
    "GITLBA_TOKEN",
  ]
}
