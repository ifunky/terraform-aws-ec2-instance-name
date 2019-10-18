variable "company" {
  type        = string
  description = "Company owner of instance"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone where instance is launched"
}

variable "account_type" {
  type        = string
  description = "client, e.g. 'compass'"
}

variable "server_role" {
  type        = string
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "environment" {
  type        = string
  description = "Functional environement where server is running e.g. 'prod', 'dev'"
}

variable "counter" {
  type        = string
  description = "Unique counter for server role i.e. `001`"
}
