
data "aws_ami" "ami_query" {
  most_recent = true
  #  name_regex       = "^myami-[0-9]{3}"
  owners = ["amazon"]


  filter {

    name   = "name"
    values = ["al2023-ami-*-x86_64"]

  }



}


resource "aws_instance" "loop_dev" {

  ami           = data.aws_ami.ami_query.image_id
  instance_type = "t3.micro"


  provisioner "local-exec" {
    command = "echo ${self.arn} Instance created!"
  }

}