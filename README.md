# Docker images for flameshot CI building. :whale:
![image](https://github.com/flameshot-org/flameshot-org.github.io/raw/master/static/flameshot-icon.svg) 
> Powerful yet simple to use screenshot software.

Docker bub repository: https://hub.docker.com/r/flameshotorg/ci-building-images

The action is triggered by [workflows push paths event](https://help.github.com/en/actions/reference/workflow-syntax-for-github-actions#onpushpull_requestpaths) or [the repo's dispatch event](https://developer.github.com/v3/repos/#create-a-repository-dispatch-event).

There're two ways to trigger docker images building,

- Get your own [personal access token](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line).

  `POST /repos/:owner/:repo/dispatches`

  Trigger with curl command, example,

  ```
  curl -H "Accept: application/Accept: application/vnd.github.v3.full+json" \
  -H "Authorization: token your-personal-token" \
  --request POST \
  --data '{\"event_type\": \"fedora-build\"}' \
  https://api.github.com/repos/flameshot-org/flameshot-dockerfiles/dispatches
  ```

  or

  ```
  curl -H "Accept: application/Accept: application/vnd.github.v3.full+json" \
  -H "Authorization: token your-personal-token" \
  --request POST \
  --data '{\"event_type\": \"fedora-build\", \"client_payload\": { \"version\": \"0.33.0\"}}' \
  https://api.github.com/repos/flameshot-org/flameshot-dockerfiles/dispatches
  ```

- Push changes on some Dockerfiles or workflow yaml files. For example, `debian/bullseye/Dockerfile` or `.github/workflows/debian.yml`

