
/*
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}


data "aws_account_primary_contact" "primay_contact" {}

output "fullname" {
  value = data.aws_account_primary_contact.primay_contact
}

 data "aws_account_regions" "region_data" {}

output "region" {
value = data.aws_account_regions.region_data.region
}
*/

