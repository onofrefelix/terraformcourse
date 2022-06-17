
#terraform version in use
terraform {
  required_version = "1.2.3"

  required_providers {
    aws = {
       source = "hashicorp/aws"
       version = "4.19.0"
    }
  }
}

#provider configuration
provider "aws" {
  region = "us-east-1"
  #profile = "nome do profile se for o caso"
}


#create a resource
resource "aws_s3_bucket" "mytestbucket" {
  bucket = "terraform-stage-sandbox"
  acl = "private"

  tags = {
    Name        = "bucket de estudo"
    Environment = "Dev"
    ManagedBy = "Terraform"
    CreatedBy = "onofre"
    dateCreated = "2022-06-16"
  }
}

