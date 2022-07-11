terraform {
  required_version = ">= 1.0.8"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "= 2.26.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.13.0"
    }
  }
}
