terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.82.0"
    }
  }
  backend "azurerm" {
    resource_group_name      = "mystorage-account"
    storage_account_name     = "terraform1997"
    container_name           = "terraformstate"
    key                      = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
