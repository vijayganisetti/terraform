resource "aws_instance" "db" {
  ami           = var.ami_imageid
  #vpc_security_group_ids = [aws_security_group.allow_ssh1.id] # default security group will be used
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}