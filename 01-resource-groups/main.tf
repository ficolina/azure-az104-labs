terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg_dev" {
  name     = "rg-dev-az104-tf"
  location = var.location

  tags = {
    environment = "dev"
    owner       = var.owner
    costCenter  = "lab"
  }
}

resource "azurerm_resource_group" "rg_prod" {
  name     = "rg-prod-az104-tf"
  location = var.location

  tags = {
    environment = "prod"
    owner       = var.owner
    costCenter  = "lab"
  }
}
