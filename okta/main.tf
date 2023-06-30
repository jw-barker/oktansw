module "okta_users" {
  source     = "./modules/user"
  okta_token = data.azurerm_key_vault_secret.okta_token.value
  okta_org   = "<OKTA_ORGANIZATION_URL>"
  users      = jsondecode(file("${path.module}/users.json"))
}

module "okta_policies" {
  source = "./modules/policies"
  okta_policies = jsondecode(file("${path.module}/policies.json"))
}

