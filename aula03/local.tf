locals {

  ip_filepath = "ip_file.json"

  common_tags = {
    Name        = "bucket de estudo"
    Environment = "Dev"
    ManagedBy   = var.environment
    CreatedBy   = "onofre"
    dateCreated = "2022-06-16"
    updateteAt  = "2022-06-16"
  }
}