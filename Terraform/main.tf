# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  
# subscription_id = "37dc6063-359f-4693-b941-add4a5685359"
# client_id       = "e2f6b725-e3c1-417b-a3a7-66fd03a8bb36"
# client_secret   = "57478ac9-4bc6-4dc4-bf8c-8028a860607f"
# tenant_id       = "766317cb-e948-4e5f-8cec-dabc8e2fd5da"

  features {}
}

terraform {
  required_version = ">= 0.11" 
  backend "azurerm" {
    storage_account_name = "terraformstorage78219e1c"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
	  access_key  ="Dc52G9R2aAQ6F1btbdbB8EuAwv6Diepjq6WW6nPN0HAWatOfj9d/XDu1/nwJEx3FozPYMWUMSf60eaM7D2mN+Q=="
  }
}
