# aws-cli-kubectl
Custom docker image which has AWS cli & k8s kubectl.

## Docker Image
This is available from [mrupgradable/aws-cli-kubectl:1.32](https://hub.docker.com/repository/docker/mrupgradable/aws-cli-kubectl/)

Tag of the image is relevant to kubectl version.

## Rationale
aws-cli Docker image does not have kubectl (obviously).

Customising this each time in a continuous delivery process takes uneccessary time.

## Versions
Python is used by aws-cli, that's why it's included.

| Module  | Version  |
| ------- | -------  |
| aws-cli |  2.24.17 |
| kubectl |  1.32    |
| python  |  3.12.9  |

