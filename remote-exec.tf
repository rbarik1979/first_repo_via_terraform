resource "aws_instance" "example" {
  ami                    = "ami-0b6d9d3d33ba97d99"
  instance_type          = "t3.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-010c51323c2443886"]

  tags = {
    Name = "test-instance1"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./terraform-key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
      "sudo systemctl status nginx --no-pager"
    ]
  }
}




