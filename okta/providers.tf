provider "azurerm" {
  # Configure Azure provider settings here
}

provider "okta" {
  token     = data.azure_key_vault_secret.okta_token.value
  base_url  = var.okta_org
}
