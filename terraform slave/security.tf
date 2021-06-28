resource "aws_security_group" "MyFirstInstance_Slave5" {
  name = "MyFirstInstance_Slave5"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-f4a8379f"
  ingress {
    description = "Allow ping"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
  tags = {
    Name = "EC2_MyFirstInstance_Slave5"
  }
}
