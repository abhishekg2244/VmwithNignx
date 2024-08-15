terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.115.0"
    }
  }
   backend "azurerm" {
     storage_account_name = "augstorageaccount2244"
     resource_group_name = "ABHISHEKRG_donot_delete"
     container_name = "prodcontainer"
     key = "prodstatefile.tfstate"
  }
}

provider "azurerm" {
 features {
   
 }
}