variable "okta_token" {
  description = "Name of the secret containing the Okta API token in Azure Key Vault"
}

variable "okta_org" {
  description = "Okta organisation URL"
}

provider "okta" {
  token     = data.azure_key_vault_secret.okta_token.value
  base_url  = var.okta_org
}

module "okta_users" {
  source     = "./users"

  okta_token = data.azure_key_vault_secret.okta_token.value
  okta_org   = var.okta_org
}

data "azure_key_vault_secret" "okta_token" {
  name         = var.okta_token
  key_vault_id = "<AZURE_KEY_VAULT_ID>"
}
