terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "~> 5.1.0"

    }

  }

  backend "azurerm" {
    resource_group_name  = "sachin-rg1"
    storage_account_name = "sj2firststorageaccount"
    container_name       = "sachin-container-1"
    key                  = "sachin.terraform.tfstate"
  }



}

provider "azurerm" {

  features {}
  #resource_provider_registrations = "none"

}



