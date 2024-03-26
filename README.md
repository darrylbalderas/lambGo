# lambGo

## Pre-req

1. Install terraform, golang, git, and make
1. AWS account


## Steps

1. `make build` -  create golang binary and create aws infra with terraform
1. `make invoke` - invoke created lambda using `aws lambda  invoke`
1. Once you are done with skeleton project, you can delete resources with `make destroy`


## Resources
- https://docs.aws.amazon.com/lambda/latest/dg/lambda-golang.html