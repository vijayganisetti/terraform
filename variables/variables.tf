variable "ami_imageid" {
    default = "ami-0285bdbfc6d119229"
    type = string
}

variable "instance_type" {
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "expence"
        env = "dev"
        modulu = "db"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "Allow ssh access"
    type = string
}

variable "shh_port" {
    default = 22
    type = number
}

variable "shh_protocol" {
    default = "tcp"
    type = string
}

variable "cidr" {
    default = ["0.0.0.0/0"]

    type = list(string)
}
