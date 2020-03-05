# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  
  subscription_id = "__subscriptionid__"
  client_id       = "__clientid__"
  client_secret   = "__clientsecret__"
  tenant_id       = "__tenantid__"

  features {}
}

terraform {
  required_version = ">= 0.11" 
  backend "azurerm" {
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
	access_key  ="__storagekey__"
  }
}