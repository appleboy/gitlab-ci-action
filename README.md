# 🚀 GitLab CI for GitHub Actions

[![trigger gitlab job](https://github.com/appleboy/gitlab-ci-action/actions/workflows/ci.yml/badge.svg)](https://github.com/appleboy/gitlab-ci-action/actions/workflows/ci.yml)

[GitHub Action](https://github.com/features/actions) for trigger [gitlab-ci](https://about.gitlab.com/gitlab-ci) jobs. See Trigger pipelines by [using the API](https://docs.gitlab.com/ee/ci/triggers/index.html).

## Usage

Trigger New GitLab CI Job.

```yml
name: trigger gitlab job
on: [push]
jobs:

  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
    - name: trigger Job
      uses: appleboy/gitlab-ci-action@v1.1.0
      with:
        host: "http://example.com"
        token: ${{ secrets.TOKEN }}
        project_id: 100

```

## GitLab Setting

See the detail documentation for [Triggering pipelines through the API](https://docs.gitlab.com/ee/ci/triggers/). How to get the token from a new trigger? You can add a new trigger by going to your project’s `Settings ➔ CI/CD` under **Pipeline trigger tokens**.

![token](./images/newtoken.png)

How to get the project ID? going to your project’s `Settings ➔ General` under General project.

![projectID](./images/setting.png)

## Example

Specific the GitLab host URL:

```yml
- name: trigger Job
  uses: appleboy/gitlab-ci-action@v1.1.0
  with:
    host: "http://example.com"
    token: ${{ secrets.TOKEN }}
    debug: true
    project_id: 100
```

Other specific `branch` or `tag` name:

```yml
- name: trigger Job
  uses: appleboy/gitlab-ci-action@v1.1.0
  with:
    host: "http://example.com"
    token: ${{ secrets.TOKEN }}
    debug: true
    project_id: 100
    ref: v1.0.0
```

Pass the variables to the triggered pipeline:

```yml
- name: trigger Job
  uses: appleboy/gitlab-ci-action@1.1.0
  with:
    host: "http://example.com"
    token: ${{ secrets.TOKEN }}
    debug: true
    project_id: 100
    variables: key1=value01,key2=value02
```

## Input variables

* host - Optional. gitlab-ci base url, default as `https://gitlab.com`
* token - Required. A unique trigger token can be obtained when [adding a new trigger](https://docs.gitlab.com/ee/ci/triggers/index.html).
* project_id - Required. project id.
* ref - Optional. Triggers can be used to force a pipeline rerun of a specific ref (`branch` or `tag`) with an API call. Default as `main`.
* insecure - Optional. Allow insecure SSL connections. Default as `false`.
* variables - Optional. Variables to be passed to the triggered pipeline. Default as empty. example: `key1=value01,key2=value02`.
* debug - Optional. show the debug message.
