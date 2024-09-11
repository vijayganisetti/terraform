variable "common_tags" {
    default = {
        env = "dev"
        project= "expense"
        terraform = "true"
    }
  
}

variable "instance_names"{
    type = list
    default = ["db","backend","frontend"]
}