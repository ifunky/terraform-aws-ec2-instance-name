<!-- Auto generated file -->

# Create EC2 Instance Names
 [![Build Status](https://git.fincore.com/cmp/terraform-aws-ec2-instance-name/badges/master/pipeline.svg)](https://git.fincore.com/cmp/terraform-aws-ec2-instance-name/pipelines)

A very opinionated module used to create instance names.  

## Features

### EC2 Instance Name
- Returns a name based on parameters passed
- AWS availability zone incorporated into name 



## Usage
Based on the usage code below this module will produce a server name:- FWEWAAIRWEVP001 

```hcl
module "web_instance_name" {
  source = "git::https://git.fincore.com/cmp/terraform-aws-instance-name.git?ref=master"

  company           = "Finworks"
  availability_zone = "eu-west-2a"
  account_type      = "AIR"
  server_role       = "WEB"
  environment       = "prod"
  counter           = "001"
}
```


## Makefile Targets
The following targets are available: 

```
createdocs/help                Create documentation help
polydev/createdocs             Run PolyDev createdocs directly from your shell
polydev/help                   Help on using PolyDev locally
polydev/init                   Initialise the project
polydev/validate               Validate the code
polydev                        Run PolyDev interactive shell to start developing with all the tools or run AWS CLI commands :-)
```
# Module Specifics

Core Version Constraints:
* `~> 0.12.2`

Provider Requirements:
* **aws:** `~> 2.16`

## Input Variables
* `account_type` (required): client, e.g. 'compass'
* `availability_zone` (required): Availability zone where instance is launched
* `company` (required): Company owner of instance
* `counter` (required): Unique counter for server role i.e. `001`
* `environment` (required): Functional environement where server is running e.g. 'prod', 'dev'
* `server_role` (required): Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'

## Output Values
* `name`: Instance name




## Related Projects

Here are some useful related projects.

- [PolyDev](https://git.fincore.com/cmp/polydev) - PolyDev repo and setup guide
- [EC2 Windows Instance Module](https://git.fincore.com/cmp/terraform-aws-ec2-windows-instance) - Create EC2 Windows instances



