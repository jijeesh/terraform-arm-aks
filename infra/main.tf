provider "azurerm" {
    version = "~>1.19"
}

variable "myList" {
    type = "list"
    default = ["a", "b", "c"]
}

terraform {
  backend "azurerm" {
    storage_account_name  = "acemesa"
    container_name        = "tfstate"
    key                   = "aceme-management.tfstate"
  }
}
