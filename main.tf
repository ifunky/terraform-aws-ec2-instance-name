locals {
  availability_zones = {
    eu-west-1a = "EWA"
    eu-west-1b = "EWB"
    eu-west-1c = "EWC"
    eu-west-2a = "EWA"
    eu-west-2b = "EWB"
    eu-west-2c = "EWC"
    }
  companies = {
    finworks = "FW"
    fincore  = "FC"
    }

    company_short_name = local.companies[lower(var.company)]
    az_short_name      = local.availability_zones[lower(var.availability_zone)]
    environment_letter = substr(var.environment, 0, 1)
    name               = upper("${local.company_short_name}${local.az_short_name}${var.account_type}${var.server_role}${local.environment_letter}${var.counter}")
}