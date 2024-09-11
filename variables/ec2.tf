resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh "

  tags = {
    Name = "allow_tls"
    createdby= "vijay"
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
resource "aws_instance" "foo" {
  ami           = var.image_id ##calling varaible here
  instance_type = "t2.micro"
  vpc_security_group_ids= [aws_security_group.allow_ssh.id] ## when we are creating instance vpc we must declare this 
  # vpc_security_group_ids = [security grp time . security grp name . id]
  tags = {
    Name = "db"
  }
}

#success