provider "okta" {
  org_url = var.okta_org
  token   = var.okta_token
}

provider "azurerm" {
  features {}
}
