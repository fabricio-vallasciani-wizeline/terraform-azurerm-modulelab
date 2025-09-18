# terraform-azurerm-modulelab

Login to azure
Run az login + enter on vs code terminal
Select subscription and also copy ID for variable input parameter 

Login to terraform
Run terraform login + enter 
Generate token on website and use it

How to use it in your terraform configuration
module "module" {
  source              = "app.terraform.io/fabricio_vallasciani_wizeline_org/module/fabri"
  version             = "5.0.0"
  subscription_id     = "fromAzureLogin"
  resource_group_name = "fromAzurePortal"
}

