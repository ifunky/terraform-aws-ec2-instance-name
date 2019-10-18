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

