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
    # count = 3 #using this method not prefer
    count = length(var.instance_names)
  ami           = "ami-0285bdbfc6d119229"
  instance_type = "t2.micro"
  vpc_security_group_ids= [aws_security_group.allow_ssh.id] ## when we are creating instance vpc we must declare this 
  # vpc_security_group_ids = [security grp time . security grp name . id]
  tags = {
    Name = var.instance_names[count.index]
  }
}

