terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg007"
    storage_account_name = "storagebackend007"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "50d7f43f-63cc-4cf6-8829-1542e9da33ea"
}
