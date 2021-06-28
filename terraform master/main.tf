terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}


provider "aws" {
  region = "us-east-2"
 }
 
resource "aws_instance" "MyFirstInstance_Master5" {
  ami = "ami-00399ec92321828f5"
  instance_type  = "t2.xlarge"
  associate_public_ip_address = true
  key_name   = "FinalProject-ec2-access-key-us-east-2"
  
  
  tags = {
    Name = "EC2_MyFirstInstance_Master5"
  }
}
	
	
	
	