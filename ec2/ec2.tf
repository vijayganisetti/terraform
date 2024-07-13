resource "aws_instance" "db" {
  ami           = "ami-0285bdbfc6d119229"
  vpc_security_group_ids = [aws_security_group.allow_ssh1.id]
  instance_type = "t3.micro"

  tags = {
    Name = "db"
  }
}
resource "aws_security_group" "allow_ssh1" {
  name        = "allow_ssh1"
  description = "Allow ssh access"

  tags = {
    Name = "allow_ssh1"
    created_by = "vijay"
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
 