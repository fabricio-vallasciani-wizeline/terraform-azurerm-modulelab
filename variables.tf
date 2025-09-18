variable "subscription_id" {
  default = ""
}

variable "storage_account_name" {
  default = "secstgacc123"
}

variable "environment" {
  default = "dev"
}

variable "resource_group_name" {
  default = ""
}

locals {
  tags = {
    "Environment" = var.environment
  }
}
