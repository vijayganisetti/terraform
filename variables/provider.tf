terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

#provide authentication in this block
provider "aws" {
  # Configuration options
  #for authentication we iam access key and secret key and region we should give in git bash current path 
}