
#terraform version in use
terraform {
  required_version = "1.2.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }

  backend "s3"{
    bucket = "tfstate-493576886351"
    key = "dev/remote-state/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = var.aws_region
  #profile = "nome do profile se for o caso"
}



data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote-state" {

  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "bucket remote-state"
    Environment = var.environment
    ManagedBy   = "terraform"
    CreatedBy   = "onofre"
    dateCreated = "2022-06-16"
    updateteAt  = "2022-06-16"

  }
}

resource "aws_s3_bucket_versioning" "versioning_this" {
  bucket = aws_s3_bucket.remote-state.id
  versioning_configuration {
    status = "Enabled"
  }
}


#provider configuration


#create a resource
resource "aws_s3_bucket" "mytestbucket" {
  bucket = "terraform-stage-sandbox"
  #${random_pet.bucket.id}-${var.environment}-onofre

  tags = local.common_tags
}

resource "aws_s3_object" "thisobject" {
  bucket = aws_s3_bucket.mytestbucket.bucket
  #local onde o arquivo sera depositado
  key = "config/${local.ip_filepath}"
  #arquivo de origem
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
}

#resource "aws_instance" "web" {
#  ami           = var.instance_ami
#  instance_type = var.instance_type
#
#  tags = var.instance_tags
#}

