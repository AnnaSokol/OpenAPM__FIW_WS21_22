provider "aws" {
   #access_key = "................"
   #secret_key = "................"
   region  = "eu-central-1"
 }

resource "aws_instance" "Terraform-htw-2" {
	    ami                    = "ami-0a49b025fffbbdac6"
	    instance_type          = "t3.micro"
      vpc_security_group_ids = [aws_security_group.doc-group.id]
      user_data = file("docker_file.sh")
      key_name = "htw_projekt_key"
	}

resource "aws_security_group" "doc-group" {
  name        = "doc_sec_gr"
  description = "htw_doc_sec_gr"

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 3000
    to_port          = 3000
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