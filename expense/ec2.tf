resource "aws_instance" "expense" {
    #count = 3
    #with out giving count number we can use function 
    count = length(var.instance_name) 
    ami = var.ami_imageid
  #vpc_security_group_ids = [aws_security_group.allow_ssh1.id]
    instance_type = var.instance_name[count.index]=="db" ? "t3.small" : "t3.micro"

  #here we used merge function 
  tags = merge(
    var.tag_names,
    {Name = var.instance_name[count.index] 
    module = var.instance_name[count.index]
    }
  ) 

}