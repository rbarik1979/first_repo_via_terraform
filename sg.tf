



resource "aws_security_group" "security_group_payment_app" {
  name        = var.sg_name
  description = "Application Security Group"
  vpc_id      = aws_vpc.example.id

  # Below ingress allows HTTPS from DEV VPC
  ingress {
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = [var.dev_vpc_cidr]
  }

  # Below ingress allows APIs access from DEV VPC
  ingress {
    from_port   = var.api_port
    to_port     = var.api_port
    protocol    = "tcp"
    cidr_blocks = [var.dev_vpc_cidr]
  }

  # Below ingress allows APIs access from Prod App Public IP
  ingress {
    from_port   = var.api_ssl_port
    to_port     = var.api_ssl_port
    protocol    = "tcp"

    # Replace with the actual source IP address
    cidr_blocks = [var.prod_app_ip]
  }

  egress {
    from_port   = var.splunk_port
    to_port     = var.splunk_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { 
    Name = "payment Group"
    Environment = "Dev"
  }
}

