terraform {
  backend "azurerm" {
    resource_group_name  = "terraform_github"
    storage_account_name = "terraform_github"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}