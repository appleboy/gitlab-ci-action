#!/bin/sh

set -eu

export GITHUB_ACTIONS=true

/bin/drone-gitlab-ci
