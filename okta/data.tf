data "azurerm_key_vault_secret" "okta_token" {
  name         = "<OKTA_API_TOKEN_SECRET_NAME>"
  key_vault_id = "<AZURE_KEY_VAULT_ID>"
}
