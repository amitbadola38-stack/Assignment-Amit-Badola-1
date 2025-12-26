terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "56b55a6e-5b0b-415e-a4cf-bce19671be7e"
}