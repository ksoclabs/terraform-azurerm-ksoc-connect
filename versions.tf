terraform {
  required_version = ">= 1.0.8"

  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.38.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.97.1"
    }
    ksoc = {
      source  = "ksoclabs/ksoc"
      version = ">= 0.1.0"
    }
  }
}
