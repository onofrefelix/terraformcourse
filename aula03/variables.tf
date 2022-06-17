
variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}


variable "aws_profile" {
  type        = string
  description = ""
  #default = "us-east-1"
}


variable "instance_ami" {
  type        = string
  description = "VM de estudo"
  default     = "ami-08d4ac5b634553e16"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
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