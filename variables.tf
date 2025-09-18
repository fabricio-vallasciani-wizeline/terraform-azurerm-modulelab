variable "subscription_id" {
  default = ""
}

variable "storage_account_name" {
  default = "secure_storage_account_123"
}

variable "environment" {
  default = "dev"
}

locals {
  tags = {
    "Environment" = var.environment
  }
}
