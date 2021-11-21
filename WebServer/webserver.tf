provider "aws" {
   access_key = "..................."
   secret_key = "..................."
   region  = "eu-central-1"
 }

resource "aws_instance" "Terraform_HTW" {
	    ami                    = "ami-0a49b025fffbbdac6"
	    instance_type          = "t3.micro"
      vpc_security_group_ids = [aws_security_group.htw_sec_gr.id]
      user_data = file("htmlFile.sh")
	}
resource "aws_security_group" "htw_sec_gr" {
  name        = "webserver_sec_gr"
  description = "htw_first_sec_gr"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}