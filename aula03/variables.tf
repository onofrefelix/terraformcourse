variable "environment" {
  type        = string
  description = "Enviroment Type"
}



variable "aws_region" {
  type        = string
  description = ""

}


variable "aws_profile" {
  type        = string
  description = ""
  #default = "us-east-1"
}


variable "instance_ami" {
  type        = string
  description = "VM de estudo"

}

variable "instance_type" {
  type        = string
  description = ""

}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name        = "Ubuntu"
    Project     = "Curso AWS com Terrraform"
    Environment = "Sandbox"
    ManagedBy   = "Terraform"
    CreatedBy   = "Onofre Lima"
    dateCreated = "2022-06-16"
    updateteAt  = "2022-06-16"

  }
}