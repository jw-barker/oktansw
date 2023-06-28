okta_organization_url    = "https://your-okta-organization-url"
okta_token_secret_name   = "okta-api-token-secret"
azure_key_vault_id       = "your-azure-key-vault-id"

users = [
  {
    username   = "user1${var.username}"
    email      = "user1@example.com"
    first_name = "John"
    last_name  = "Doe"
  },
  {
    username   = "user2${var.username}"
    email      = "user2@example.com"
    first_name = "Jane"
    last_name  = "Smith"
  }
]
