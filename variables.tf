
variable "aws_region" {}
variable "vpc_cidr" {}
variable "sg_name" {}
variable "dev_vpc_cidr" {}
variable "prod_app_ip" {}
variable "https_port" {}
variable "api_port" {}
variable "api_ssl_port" {}
variable "splunk_port" {
  default = "8080"
}
