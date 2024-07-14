resource "aws_instance" "db" {
    #count = 3
    #with out giving count number we can use function 
    count = length(var.instance_name) 
    ami = var.ami_imageid
  #vpc_security_group_ids = [aws_security_group.allow_ssh1.id]
    instance_type = var.instance_type

  tags = {
    Name=var.instance_name[count.index]
}

}