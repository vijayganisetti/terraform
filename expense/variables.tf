variable "ami_imageid" {
    default = "ami-0285bdbfc6d119229"
    type = string
}

variable "instance_type" {
    default = "t3.micro"
}

variable "instance_name" {
    type = list
    default = ["db","backend","frontend"]
}

variable "tag_names" {
    default = {
        project = "expence"
        env = "dev"
    }
}