resource "aws_security_group" "allow_practice" {
  name        = "allow_practice"

  tags = {
    Name = "allow_practice"
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

resource "aws_instance" "practice" {
  count = length(var.instance_names)
  ami           = var.ami_id
  instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"

  tags = merge( 
    var.common_tags , 
    { name = var.instance_names[count.index]
      module= var.instance_names[count.index]

    }
  )

  
}


