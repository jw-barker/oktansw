data "azurerm_key_vault_secret" "okta_token" {
  name         = "<OKTA_API_TOKEN_SECRET_NAME>"
  key_vault_id = "<AZURE_KEY_VAULT_ID>"
}

module "okta_users" {
  source     = "./modules/user"
  okta_token = data.azurerm_key_vault_secret.okta_token.value
  okta_org   = "<OKTA_ORGANIZATION_URL>"
  users      = var.users
}



