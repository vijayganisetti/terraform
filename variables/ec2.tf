resource "aws_instance" "db" {
  ami           = var.ami_imageid
  vpc_security_group_ids = [aws_security_group.allow_ssh1.id]
  instance_type = var.instance_type

  tags = var.tags
}
resource "aws_security_group" "allow_ssh1" {
  name        = var.sg_name
  description = var.sg_description

  tags = {
    Name = "allow_ssh"
    created_by = "vijay"
  }
  ingress {
    from_port        = var.shh_port
    to_port          = var.shh_port
    protocol         = var.shh_protocol
    cidr_blocks      = var.cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr
  }
}
 