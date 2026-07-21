
variable "ssl_port" {}
variable "any_ip" {}
variable "vpc_block" {}

variable "region" {}
variable "tags" {
  type    = list(any)
  default = ["first-ec2", "second-ec2"]
}

variable "ami" {
  type = map(any)
  default = {
    "us-east-1"  = "ami-01edba92f9036f76e"
    "us-west-2"  = "ami-0fd6b4bfb40773c2d"
    "ap-south-1" = "ami-0b910d1016287a5e7"
  }

}