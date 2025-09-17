variable "resource_group_name"{
    default = ""
}

variable "resource_group_location"{
    default = "east US"
}

variable "storage_account_name"{
    default = "secure_storage_account_123"
}

variable "environment"{
    default = "dev"
}

locals { 
    environment = var.environment
}
