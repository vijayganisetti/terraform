variable "ami_id" {
    type = string
    default = "ami-0285bdbfc6d119229"
  
}

variable "instance_names"{
    type = list
    default = ["db" , "backend" , "frontend"]
}

variable "common_tags" {
    default = {
        project = "expense"
        environment= "dev"
        infra = "terraform"
    }
}