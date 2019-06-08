# ecs-ssm-ami

Create an ECS AMI that has Session Manager installed.
Use 3 Musketeers pattern to run terraform from docker container.

## Pre-requisites

- Need make installed and local docker running
- Need valid AWS CLI credentials in ~/.aws before running
- Need a public subnet available in your AWS VPC, configure in `vars.json`

## To build

```bash
make build
```
