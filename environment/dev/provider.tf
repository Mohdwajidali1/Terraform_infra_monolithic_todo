terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.50.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "Rg_storage"
  #   storage_account_name = "strgbeckend"
  #   container_name       = "beckendcontainer"
  #   key                  = "terraform.tfstate"

  # }
}
provider "azurerm" {
  features {}
  subscription_id = "14ecb8dc-c241-4d1e-a6c1-7efd26e3f1e3"


}
