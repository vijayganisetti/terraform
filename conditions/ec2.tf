resource "aws_instance" "db" {
  ami           = var.image_id
  instance_type = var.instance_name == "db"? "t3.small" : "t3.small"
  ## when we are creating instance vpc we must declare this 
  # vpc_security_group_ids = [security grp time . security grp name . id]
 
}