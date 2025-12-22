terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "dev-infra-rg01"
    storage_account_name = "devinfrastorage01"
    container_name = "devinfracontainer01"
    key = "devinfra01.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "635e9286-14d1-435f-b7e1-af1ebf689f4e"
}